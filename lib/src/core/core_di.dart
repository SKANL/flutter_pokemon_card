import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import '/src/core/core_navigation/app_router.dart';
import '/src/core/core_network/dio_client.dart';
import '/src/core/core_domain/repositories/favorites_repository.dart';
import '/src/core/core_persistence/app_db.dart';
import '/src/core/core_persistence/drift_favorites_repository.dart';
import '/src/core/core_persistence/drift_pokemon_repository.dart';
import '/src/features/pokemon_cards/data/repositories_impl/pokemon_card_repository_impl.dart';
import '/src/core/core_domain/repositories/pokemon_card_repository.dart';

void initCoreDI(GetIt sl) {
  // Redes
  sl.registerLazySingleton<Dio>(() => createDioClient());

  // Navegación
  // Registra el GoRouter como un singleton
  sl.registerLazySingleton<GoRouter>(() => createAppRouter(sl));

  // Persistence / DB
  sl.registerLazySingleton<AppDb>(() => AppDb());

  // Drift-backed favorites repository
  sl.registerLazySingleton<FavoritesRepository>(() => DriftFavoritesRepository(sl()));

  // Register the remote (Dio) repository implementation under its concrete type
  sl.registerLazySingleton<PokemonCardRepositoryImpl>(() => PokemonCardRepositoryImpl(dio: sl()));

  // Wrap with Drift cache repository and register the interface once.
  // The Drift wrapper will delegate to the remote concrete implementation.
  sl.registerLazySingleton<PokemonCardRepository>(
    () => DriftPokemonRepository(sl<AppDb>(), sl<PokemonCardRepositoryImpl>()),
  );
}