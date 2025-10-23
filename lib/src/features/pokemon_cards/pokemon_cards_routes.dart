import 'package:go_router/go_router.dart';
import '/src/features/pokemon_cards/presentation/screens/cards_page.dart';

// Define las rutas de esta feature
final pokemonCardsRoutes = [
  GoRoute(
    path: '/', // Esta será la pantalla de inicio
    builder: (context, state) => const CardsPage(),
    // Aquí podrías añadir sub-rutas, ej:
    // routes: [
    //   GoRoute(
    //     path: 'details/:id', 
    //     builder: (context, state) => ...
    //   ),
    // ]
  ),
];