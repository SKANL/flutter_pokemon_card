import '/src/core/core_domain/repositories/favorites_repository.dart';
import 'app_db.dart';

class DriftFavoritesRepository implements FavoritesRepository {
  final AppDb _db;
  DriftFavoritesRepository(this._db);

  @override
  Future<void> addFavorite(String id) async => _db.addFavorite(id);

  @override
  Future<List<String>> getFavorites() async => _db.allFavorites();

  @override
  Future<bool> isFavorite(String id) async => _db.isFavorite(id);

  @override
  Future<void> removeFavorite(String id) async => _db.removeFavorite(id);
}
