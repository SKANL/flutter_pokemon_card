import 'package:shared_preferences/shared_preferences.dart';
import '/src/core/core_domain/repositories/favorites_repository.dart';

class LocalFavoritesRepository implements FavoritesRepository {
  static const _kKey = 'favorite_card_ids';

  Future<SharedPreferences> get _prefs async => await SharedPreferences.getInstance();

  @override
  Future<void> addFavorite(String id) async {
    final prefs = await _prefs;
    final list = prefs.getStringList(_kKey) ?? <String>[];
    if (!list.contains(id)) {
      list.add(id);
      await prefs.setStringList(_kKey, list);
    }
  }

  @override
  Future<List<String>> getFavorites() async {
    final prefs = await _prefs;
    return prefs.getStringList(_kKey) ?? <String>[];
  }

  @override
  Future<bool> isFavorite(String id) async {
    final prefs = await _prefs;
    final list = prefs.getStringList(_kKey) ?? <String>[];
    return list.contains(id);
  }

  @override
  Future<void> removeFavorite(String id) async {
    final prefs = await _prefs;
    final list = prefs.getStringList(_kKey) ?? <String>[];
    if (list.contains(id)) {
      list.remove(id);
      await prefs.setStringList(_kKey, list);
    }
  }
}
