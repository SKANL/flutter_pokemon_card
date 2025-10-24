abstract class FavoritesRepository {
  Future<bool> isFavorite(String id);
  Future<void> addFavorite(String id);
  Future<void> removeFavorite(String id);
  Future<List<String>> getFavorites();
}
