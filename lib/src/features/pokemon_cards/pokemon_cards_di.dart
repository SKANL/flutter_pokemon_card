import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import '/src/core/core_domain/repositories/pokemon_card_repository.dart';
import '/src/features/pokemon_cards/data/repositories_impl/pokemon_card_repository_impl.dart';
import '/src/features/pokemon_cards/domain/usecases/get_pokemon_cards_usecase.dart';
import '/src/features/pokemon_cards/presentation/manager/pokemon_card_bloc.dart';
import '/src/features/pokemon_cards/pokemon_cards_routes.dart';

void initPokemonCardsDI(GetIt sl) {
  // BLoC / Manager
  // Se registra como 'factory' porque la UI lo creará y destruirá
  sl.registerFactory(
    () => PokemonCardBloc(
      getPokemonCards: sl(), // Pide el UseCase a GetIt
    ),
  );

  // UseCases
  // Se registra como 'lazySingleton'
  sl.registerLazySingleton(
    () => GetPokemonCardsUseCase(
      repository: sl(), // Pide el Repositorio a GetIt
    ),
  );

  // Repositories
  // Le dice a GetIt: "Cuando alguien pida PokemonCardRepository (el contrato),
  // entrégale una instancia de PokemonCardRepositoryImpl (la implementación)".
  sl.registerLazySingleton<PokemonCardRepository>(
    () => PokemonCardRepositoryImpl(
      dio: sl(), // Pide la instancia de 'Dio' (registrada en core_di.dart)
    ),
  );

  // Rutas
  // Registra la lista de GoRoutes de esta feature
  sl.registerLazySingleton<List<GoRoute>>(
    () => pokemonCardsRoutes,
    instanceName: 'pokemonCardsRoutes', // Nombre único para identificarlo
  );
}