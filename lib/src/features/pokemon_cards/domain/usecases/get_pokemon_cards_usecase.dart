import '/src/core/core_domain/entities/pokemon_card.dart';
import '/src/core/core_domain/repositories/pokemon_card_repository.dart';

class GetPokemonCardsUseCase {
  // Depende del CONTRATO (de core_domain)
  final PokemonCardRepository repository;

  GetPokemonCardsUseCase({required this.repository});

  // El UseCase simplemente pasa la llamada.
  // Aquí es donde pondrías lógica de negocio si la hubiera.
  Future<List<PokemonCard>> call({required int page, int pageSize = 20}) {
    return repository.getCards(page: page, pageSize: pageSize);
  }
}