import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

// Crea y configura el cliente Dio centralizado.
// Ajusta timeouts, encabezados y agrega interceptores (por ejemplo, logging en debug).
Dio createDioClient() {
  final options = BaseOptions(
    connectTimeout: const Duration(seconds: 10),
    // Increased receiveTimeout from 10s to 30s to accommodate slower responses
    // and avoid DioException [receive timeout] observed in logs.
    receiveTimeout: const Duration(seconds: 30),
    sendTimeout: const Duration(seconds: 10),
    headers: {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
    },
  );

  final dio = Dio(options);

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