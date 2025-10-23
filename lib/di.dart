import 'package:get_it/get_it.dart';
import '/src/features/pokemon_cards/pokemon_cards_di.dart';
import '/src/core/core_di.dart';

final sl = GetIt.instance; // sl = Service Locator

Future<void> initDI() async {
  // Registra los módulos Core
  initCoreDI(sl);

  // Registra las Features
  initPokemonCardsDI(sl);
}