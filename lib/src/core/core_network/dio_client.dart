import 'package:dio/dio.dart';

// Por ahora, solo creamos una instancia base.
// Aquí es donde añadirías interceptores, etc.
Dio createDioClient() {
  final dio = Dio();
  // Aquí puedes configurar interceptores para logs, tokens, etc.
  return dio;
}