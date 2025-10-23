import 'package:dio/dio.dart';
import '/src/core/core_domain/entities/pokemon_card.dart';
import '/src/core/core_domain/repositories/pokemon_card_repository.dart';
import '/src/features/pokemon_cards/data/models/pokemon_card_model.dart';

class PokemonCardRepositoryImpl implements PokemonCardRepository {

  // *** ADAPTACIÓN V5 CRÍTICA ***
  // Pedimos 'Dio' a través del constructor.
  // GetIt (DI) se encargará de proveerlo.
  final Dio _dio;
  PokemonCardRepositoryImpl({required Dio dio}) : _dio = dio;

  final String _baseUrl = 'https://api.pokemontcg.io/v2';

  @override
  Future<List<PokemonCard>> getCards({
    required int page,
    int pageSize = 20,
  }) async {
    try {
      final response = await _dio.get(
        '$_baseUrl/cards',
        queryParameters: {
          'page': page,
          'pageSize': pageSize,
          'orderBy': 'name',
        },
      );

      if (response.statusCode == 200 && response.data != null) {
        final results = response.data['data'] as List;
        final cards = results
            .map((cardData) =>
                PokemonCardModel.fromJson(cardData as Map<String, dynamic>)
                    .toEntity()) // Convertimos Modelo -> Entidad
            .toList();
        return cards;
      } else {
        throw Exception('Fallo al cargar las cartas');
      }
    } on DioException catch (e) {
      // Manejar errores de Dio
      throw Exception('Fallo al cargar las cartas: ${e.message}');
    }
  }
}