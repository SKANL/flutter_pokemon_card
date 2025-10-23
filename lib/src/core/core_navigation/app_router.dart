import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

GoRouter createAppRouter(GetIt sl) {
  // Pide al DI la lista de rutas de CADA feature
  // Usamos un try-catch por si una feature no registra rutas

  List<GoRoute> featureRoutes = [];

  try {
    // Pide las rutas de pokemon_cards
    final pokemonRoutes = sl<List<GoRoute>>(instanceName: 'pokemonCardsRoutes');
    featureRoutes.addAll(pokemonRoutes);
  } catch (e) {
    // Manejar el error si no se encuentran las rutas
  }

  // ... aquí añadirías más rutas de otras features

  return GoRouter(
    initialLocation: '/', // Inicia en la ruta raíz
    routes: featureRoutes,
  );
}