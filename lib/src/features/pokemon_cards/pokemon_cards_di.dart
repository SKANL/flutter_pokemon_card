import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
// repository registrations happen in core DI (drift wrapper + remote impl)
import '/src/features/pokemon_cards/domain/usecases/get_pokemon_cards_usecase.dart';
import '/src/features/pokemon_cards/presentation/manager/pokemon_card_bloc.dart';
import '/src/features/pokemon_cards/pokemon_cards_routes.dart';

void initPokemonCardsDI(GetIt sl) {
  // BLoC / Manager
  // Se registra como 'factory' porque la UI lo creará y destruirá
  sl.registerFactory(
    () => PokemonCardBloc(
      getPokemonCards: sl(), // Pide el UseCase a GetIt
      appDb: sl(),
    ),
  );

  // UseCases
  // Se registra como 'lazySingleton'
  sl.registerLazySingleton(
    () => GetPokemonCardsUseCase(
      repository: sl(), // Pide el Repositorio a GetIt
    ),
  );

  // Repositories: registration moved to core DI (Drift wrapper -> remote impl)

  // Rutas
  // Registra la lista de GoRoutes de esta feature
  sl.registerLazySingleton<List<GoRoute>>(
    () => pokemonCardsRoutes,
    instanceName: 'pokemonCardsRoutes', // Nombre único para identificarlo
  );
}