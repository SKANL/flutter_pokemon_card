import '/src/core/core_domain/entities/pokemon_card.dart';
import '/src/core/core_domain/models/paginated_response.dart';

abstract class PokemonCardRepository {
  Future<PaginatedResponse<PokemonCard>> getCards({required int page, int pageSize = 20, String? query});
  Future<PokemonCard> getCardById(String id);
}