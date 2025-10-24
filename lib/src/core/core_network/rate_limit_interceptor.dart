import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

/// Interceptor that handles API rate limiting (HTTP 429) with automatic retry.
/// 
/// The Pokémon TCG API has rate limits:
/// - With API Key: 20,000 requests/day
/// - Without API Key: 1,000 requests/day, max 30/minute
/// 
/// When a 429 response is received, this interceptor will:
/// 1. Wait based on the Retry-After header (if present)
/// 2. Use exponential backoff if no header is provided
/// 3. Retry the request automatically
class RateLimitInterceptor extends Interceptor {
  final int maxRetries;
  
  RateLimitInterceptor({this.maxRetries = 3});

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    // Check if it's a 429 (Too Many Requests) error
    if (err.response?.statusCode == 429) {
      final retryCount = err.requestOptions.extra['retry_count'] as int? ?? 0;
      
      if (retryCount < maxRetries) {
        // Calculate delay
        final retryAfter = _getRetryDelay(err.response, retryCount);
        
        if (kDebugMode) {
          print('⏳ Rate limit hit (429). Retrying after ${retryAfter.inSeconds}s...');
        }
        
        // Wait before retrying
        await Future.delayed(retryAfter);
        
        // Clone request and increment retry count
        final options = err.requestOptions;
        options.extra['retry_count'] = retryCount + 1;
        
        try {
          // Retry the request
          final response = await Dio().fetch(options);
          return handler.resolve(response);
        } on DioException catch (e) {
          return handler.next(e);
        }
      }
    }
    
    // If not a 429 or max retries exceeded, continue with error
    return handler.next(err);
  }

  /// Calculate retry delay based on Retry-After header or exponential backoff
  Duration _getRetryDelay(Response? response, int retryCount) {
    // Try to get Retry-After header (can be in seconds or HTTP date)
    final retryAfter = response?.headers['retry-after']?.first;
    
    if (retryAfter != null) {
      // If it's a number, treat as seconds
      final seconds = int.tryParse(retryAfter);
      if (seconds != null) {
        return Duration(seconds: seconds);
      }
    }
    
    // Fallback to exponential backoff: 2^retryCount seconds
    // Retry 1: 2s, Retry 2: 4s, Retry 3: 8s
    return Duration(seconds: 1 << (retryCount + 1));
  }
}
