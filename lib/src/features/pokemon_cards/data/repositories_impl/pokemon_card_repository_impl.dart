import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import '/src/core/core_domain/entities/pokemon_card.dart';
import '/src/core/core_domain/repositories/pokemon_card_repository.dart';
import '/src/core/core_domain/models/paginated_response.dart';
import '/src/features/pokemon_cards/data/models/pokemon_card_model.dart';

class PokemonCardRepositoryImpl implements PokemonCardRepository {

  // *** ADAPTACIÓN V5 CRÍTICA ***
  // Pedimos 'Dio' a través del constructor.
  // GetIt (DI) se encargará de proveerlo.
  final Dio _dio;
  PokemonCardRepositoryImpl({required Dio dio}) : _dio = dio;

  // baseUrl is configured in Dio client

  @override
  Future<PaginatedResponse<PokemonCard>> getCards({
    required int page,
    int pageSize = 20,
    String? query,
  }) async {
    // Build query parameters - NO select parameter to get ALL fields
    // This ensures we have complete card information including abilities, 
    // attacks, weaknesses, resistances, retreat cost, set info, etc.
    final qp = {
      'page': page,
      'pageSize': pageSize,
      'orderBy': 'name',
    };
    if (query != null && query.trim().isNotEmpty) {
      // Use Lucene-style search as documented by the API
      qp['q'] = 'name:${query.trim()}';
    }
  // NO select parameter - we want ALL fields from the API to display
  // complete card information in the detail screen with 3D flip effect

    // Simple retry strategy for transient network timeouts
    const int maxRetries = 2;
    int attempt = 0;
    while (true) {
      try {
        final response = await _dio.get(
          '/cards',
          queryParameters: qp,
          options: Options(
            // Increase timeout for this request specifically (60s)
            receiveTimeout: const Duration(seconds: 60),
          ),
        );

        if (response.statusCode == 200 && response.data != null) {
          if (response.data['data'] is! List) {
            throw Exception('Respuesta inesperada: "data" no es una lista');
          }
          final results = response.data['data'] as List<dynamic>;
          
          // Parse cards with defensive error handling - skip cards that fail to parse
          final cards = <PokemonCard>[];
          for (final cardData in results) {
            try {
              if (cardData is! Map<String, dynamic>) continue;
              final model = PokemonCardModel.fromJson(cardData);
              cards.add(model.toEntity());
            } catch (e) {
              // Skip this card and continue - don't let one bad card break the whole list
              if (kDebugMode) {
                print('⚠️ Skipping card due to parsing error: $e');
              }
              continue;
            }
          }

          // parse pagination metadata safely
          final pageVal = response.data['page'] as int? ?? page;
          final pageSizeVal = response.data['pageSize'] as int? ?? pageSize;
          final count = response.data['count'] as int? ?? cards.length;
          final totalCount = response.data['totalCount'] as int? ?? (pageVal * pageSizeVal);

          return PaginatedResponse<PokemonCard>(
            data: cards,
            page: pageVal,
            pageSize: pageSizeVal,
            count: count,
            totalCount: totalCount,
          );
        } else {
          throw Exception('Fallo al cargar las cartas: status ${response.statusCode}');
        }
      } on DioException catch (e) {
        // If it's a timeout, retry with backoff up to maxRetries
        final isTimeout = e.type == DioExceptionType.receiveTimeout ||
            e.type == DioExceptionType.connectionTimeout ||
            e.type == DioExceptionType.sendTimeout;
        if (isTimeout && attempt < maxRetries) {
          attempt++;
          // Exponential backoff (e.g., 1s, 2s...)
          await Future.delayed(Duration(seconds: 1 << (attempt - 1)));
          continue;
        }
        // Non-recoverable or exhausted retries: throw informative error
        final status = e.response?.statusCode;
        throw Exception('Fallo al cargar las cartas: ${e.message} (status: $status)');
      }
    }
  }

  @override
  Future<PokemonCard> getCardById(String id) async {
    final response = await _dio.get('/cards/$id');
    if (response.statusCode == 200 && response.data != null) {
      final data = response.data['data'];
      if (data is! Map<String, dynamic>) {
        throw Exception('Respuesta inesperada para detalle: data no es objeto');
      }
      final model = PokemonCardModel.fromJson(data);
      return model.toEntity();
    }
    throw Exception('Fallo al obtener detalle de la carta: status ${response.statusCode}');
  }
}