import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'rate_limit_interceptor.dart';

// Crea y configura el cliente Dio centralizado.
// Ajusta timeouts, encabezados y agrega interceptores (por ejemplo, logging en debug).
Dio createDioClient() {
  final options = BaseOptions(
    baseUrl: 'https://api.pokemontcg.io/v2',
    connectTimeout: const Duration(seconds: 10),
    // Increased receiveTimeout from 10s to 30s to accommodate slower responses
    // and avoid DioException [receive timeout] observed in logs.
    receiveTimeout: const Duration(seconds: 30),
    sendTimeout: const Duration(seconds: 10),
    headers: {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      // Nota: La API Key se añade aquí para todas las solicitudes.
      // Seguridad: No expongas esta clave en repositorios públicos. Para
      // producción considera usar variables de entorno o un secure store.
      'X-Api-Key': 'db029846-72fe-4553-b086-d7544b1c406a',
    },
  );

  final dio = Dio(options);

  // Rate limiting interceptor - handles 429 errors automatically
  // API limits: 20,000 requests/day with key, 1,000 without
  dio.interceptors.add(RateLimitInterceptor(maxRetries: 3));

  // Logging en modo debug
  if (kDebugMode) {
    dio.interceptors.add(
      LogInterceptor(
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
        responseBody: true,
      ),
    );
  }

  // Aquí puedes añadir otros interceptores: autenticación, reintentos, etc.

  return dio;
}