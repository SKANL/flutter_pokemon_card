import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/di.dart'; // Importa el Service Locator
import '/src/features/pokemon_cards/presentation/manager/pokemon_card_bloc.dart';
import '/src/features/pokemon_cards/presentation/screens/cards_view.dart';

class CardsPage extends StatelessWidget {
  const CardsPage({super.key});

  @override
  Widget build(BuildContext context) {
    // *** ADAPTACIÓN V5 CRÍTICA ***
    // No creamos el BLoC manualmente. Lo pedimos a 'sl' (GetIt).
    // GetIt sabe cómo construirlo gracias a nuestro 'pokemon_cards_di.dart'.
    return BlocProvider(
      create: (_) => sl<PokemonCardBloc>()..add(CardsFetched()),
      child: const CardsView(),
    );
  }
}