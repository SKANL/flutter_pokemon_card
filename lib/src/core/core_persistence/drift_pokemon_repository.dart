import 'dart:convert';

import '/src/core/core_domain/models/paginated_response.dart';
import '/src/core/core_domain/entities/pokemon_card.dart';
import '/src/core/core_domain/repositories/pokemon_card_repository.dart';
import 'app_db.dart';

/// A thin wrapper that reads cached pages from the DB. It delegates to a
/// remote repository (injected) when needed. The remote repository should be
/// the existing PokemonCardRepository implementation (Dio-based). This class
/// implements only cache-first read; the full stale-while-revalidate logic
/// will be executed by the higher-level repository or usecase.
class DriftPokemonRepository implements PokemonCardRepository {
  final AppDb _db;
  final PokemonCardRepository _remote;

  DriftPokemonRepository(this._db, this._remote);

  @override
  Future<PaginatedResponse<PokemonCard>> getCards({required int page, int pageSize = 20, String? query}) async {
    // Read cached page and return immediately (fast startup/offline support)
    final cached = await _db.getCardsByPage(page);
    final cachedCards = cached.map((r) {
      final m = jsonDecode(r['json'] as String) as Map<String, dynamic>;
      return _deserializeCard(m);
    }).toList();

    // Return cached result if available (best-effort counts)
    if (cachedCards.isNotEmpty) {
      // Trigger background refresh but do not await it. The DB watch stream will
      // notify observers when new data is cached.
      _refreshRemotePage(page, pageSize: pageSize, query: query);
      return PaginatedResponse<PokemonCard>(
        data: cachedCards,
        page: page,
        pageSize: pageSize,
        count: cachedCards.length,
        totalCount: cachedCards.length,
      );
    }

    // No cache -> fetch remote and cache results synchronously
    final remote = await _remote.getCards(page: page, pageSize: pageSize, query: query);
    await _cachePage(remote, page);
    return remote;
  }

  Future<void> _refreshRemotePage(int page, {int pageSize = 20, String? query}) async {
    try {
      final remote = await _remote.getCards(page: page, pageSize: pageSize, query: query);
      await _cachePage(remote, page);
    } catch (_) {
      // Ignore background refresh errors; UI continues to show cached data.
    }
  }

  Future<void> _cachePage(PaginatedResponse<PokemonCard> remote, int page) async {
    for (final card in remote.data) {
      final map = _serializeCard(card);
      await _db.upsertCard(card.id, jsonEncode(map), page: page);
    }
  }

  @override
  Future<PokemonCard> getCardById(String id) async {
    // Try DB first: if exists, return cached
    final rows = await _db.getAllCachedCards();
    final foundIndex = rows.indexWhere((r) => r['id'] == id);
    if (foundIndex >= 0) {
      final found = rows[foundIndex];
      final m = jsonDecode(found['json'] as String) as Map<String, dynamic>;
      return _deserializeCard(m);
    }
    // Fallback to remote
    return _remote.getCardById(id);
  }

  // Serialization helper: convert PokemonCard to JSON-safe Map
  Map<String, dynamic> _serializeCard(PokemonCard card) {
    return {
      'id': card.id,
      'name': card.name,
      'imageUrl': card.imageUrl,
      'hp': card.hp,
      'supertype': card.supertype,
      'types': card.types,
      'subtypes': card.subtypes,
      'evolvesFrom': card.evolvesFrom,
      'number': card.number,
      'abilities': card.abilities?.map((a) => {
        'name': a.name,
        'text': a.text,
        'type': a.type,
      }).toList(),
      'attacks': card.attacks?.map((a) => {
        'name': a.name,
        'cost': a.cost,
        'convertedEnergyCost': a.convertedEnergyCost,
        'damage': a.damage,
        'text': a.text,
      }).toList(),
      'weaknesses': card.weaknesses?.map((w) => {
        'type': w.type,
        'value': w.value,
      }).toList(),
      'resistances': card.resistances?.map((r) => {
        'type': r.type,
        'value': r.value,
      }).toList(),
      'retreatCost': card.retreatCost,
      'set': card.set != null ? {
        'id': card.set!.id,
        'name': card.set!.name,
        'series': card.set!.series,
        'printedTotal': card.set!.printedTotal,
        'total': card.set!.total,
        'releaseDate': card.set!.releaseDate,
      } : null,
      'rarity': card.rarity,
      'artist': card.artist,
      'flavorText': card.flavorText,
    };
  }

  // Deserialization helper: convert JSON Map to PokemonCard
  PokemonCard _deserializeCard(Map<String, dynamic> m) {
    return PokemonCard(
      id: m['id'] as String,
      name: m['name'] as String,
      imageUrl: m['imageUrl'] as String? ?? '',
      hp: m['hp'] as String?,
      supertype: m['supertype'] as String?,
      types: (m['types'] as List<dynamic>?)?.cast<String>(),
      subtypes: (m['subtypes'] as List<dynamic>?)?.cast<String>(),
      evolvesFrom: (m['evolvesFrom'] as List<dynamic>?)?.cast<String>(),
      number: m['number'] as String?,
      abilities: (m['abilities'] as List<dynamic>?)?.map((a) {
        final ability = a as Map<String, dynamic>;
        return PokemonAbility(
          name: ability['name'] as String,
          text: ability['text'] as String,
          type: ability['type'] as String? ?? '',
        );
      }).toList(),
      attacks: (m['attacks'] as List<dynamic>?)?.map((a) {
        final attack = a as Map<String, dynamic>;
        return PokemonAttack(
          name: attack['name'] as String,
          cost: (attack['cost'] as List<dynamic>?)?.cast<String>(),
          convertedEnergyCost: attack['convertedEnergyCost'] as int?,
          damage: attack['damage'] as String?,
          text: attack['text'] as String?,
        );
      }).toList(),
      weaknesses: (m['weaknesses'] as List<dynamic>?)?.map((w) {
        final weakness = w as Map<String, dynamic>;
        return PokemonWeakness(
          type: weakness['type'] as String,
          value: weakness['value'] as String,
        );
      }).toList(),
      resistances: (m['resistances'] as List<dynamic>?)?.map((r) {
        final resistance = r as Map<String, dynamic>;
        return PokemonResistance(
          type: resistance['type'] as String,
          value: resistance['value'] as String,
        );
      }).toList(),
      retreatCost: (m['retreatCost'] as List<dynamic>?)?.cast<String>(),
      set: m['set'] != null ? PokemonCardSet(
        id: (m['set'] as Map<String, dynamic>)['id'] as String,
        name: (m['set'] as Map<String, dynamic>)['name'] as String,
        series: (m['set'] as Map<String, dynamic>)['series'] as String? ?? '',
        printedTotal: (m['set'] as Map<String, dynamic>)['printedTotal'] as int?,
        total: (m['set'] as Map<String, dynamic>)['total'] as int?,
        releaseDate: (m['set'] as Map<String, dynamic>)['releaseDate'] as String?,
      ) : null,
      rarity: m['rarity'] as String?,
      artist: m['artist'] as String?,
      flavorText: m['flavorText'] as String?,
    );
  }
}
