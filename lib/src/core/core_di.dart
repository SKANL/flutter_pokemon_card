import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import '/src/core/core_navigation/app_router.dart';
import '/src/core/core_network/dio_client.dart';

void initCoreDI(GetIt sl) {
  // Redes
  sl.registerLazySingleton<Dio>(() => createDioClient());

  // Navegación
  // Registra el GoRouter como un singleton
  sl.registerLazySingleton<GoRouter>(() => createAppRouter(sl));
}