import '/src/core/core_domain/entities/pokemon_card.dart';
import '/src/core/core_domain/repositories/pokemon_card_repository.dart';
import '/src/core/core_domain/models/paginated_response.dart';

class GetPokemonCardsUseCase {
  final PokemonCardRepository repository;

  GetPokemonCardsUseCase({required this.repository});

  // Now returns PaginatedResponse<PokemonCard>
  Future<PaginatedResponse<PokemonCard>> call({required int page, int pageSize = 20, String? query}) {
    return repository.getCards(page: page, pageSize: pageSize, query: query);
  }
}