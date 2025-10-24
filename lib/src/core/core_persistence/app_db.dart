import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';

part 'app_db.g.dart';

class Cards extends Table {
  TextColumn get id => text()();
  TextColumn get json => text()();
  IntColumn get page => integer().nullable()();
  IntColumn get updatedAt => integer()();
  @override
  Set<Column> get primaryKey => {id};
}

class Favorites extends Table {
  TextColumn get id => text()();
  IntColumn get addedAt => integer()();
  @override
  Set<Column> get primaryKey => {id};
}

@DriftDatabase(tables: [Cards, Favorites])
class AppDb extends _$AppDb {
  AppDb() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  Future<void> upsertCard(String id, String jsonContent, {int? page}) async {
    final now = DateTime.now().millisecondsSinceEpoch;
    await into(cards).insertOnConflictUpdate(CardsCompanion(
      id: Value(id),
      json: Value(jsonContent),
      page: Value(page),
      updatedAt: Value(now),
    ));
  }

  Future<List<Map<String, dynamic>>> getCardsByPage(int page) async {
    final query = select(cards)..where((t) => t.page.equals(page));
    final rows = await query.get();
    return rows.map((r) => {'id': r.id, 'json': r.json}).toList();
  }

  Future<void> addFavorite(String id) async {
    await into(favorites).insert(FavoritesCompanion(
      id: Value(id),
      addedAt: Value(DateTime.now().millisecondsSinceEpoch),
    ));
  }

  Future<void> removeFavorite(String id) async {
    await (delete(favorites)..where((t) => t.id.equals(id))).go();
  }

  Future<bool> isFavorite(String id) async {
    final countQ = await (select(favorites)..where((t) => t.id.equals(id))).get();
    return countQ.isNotEmpty;
  }

  Future<List<String>> allFavorites() async {
    final rows = await select(favorites).get();
    return rows.map((r) => r.id).toList();
  }

  /// Watch all cached cards. The returned stream emits the full list of cached
  /// rows every time the `cards` table changes. Each row is a map with keys
  /// `id` and `json` (the stored JSON blob).
  Stream<List<Map<String, dynamic>>> watchCards() {
    final query = select(cards);
    return query.watch().map((rows) => rows.map((r) => {'id': r.id, 'json': r.json, 'page': r.page}).toList());
  }

  /// Returns all cached rows from the cards table as maps with keys `id` and `json`.
  Future<List<Map<String, dynamic>>> getAllCachedCards() async {
    final rows = await select(cards).get();
    return rows.map((r) => {'id': r.id, 'json': r.json, 'page': r.page}).toList();
  }
}

QueryExecutor _openConnection() {
  // Use driftDatabase from drift_flutter which uses the platform's default SQLite
  // implementation via sqflite. This avoids needing libsqlite3.so bundled
  // for the dart:ffi-based driver.
  return driftDatabase(name: 'app.db');
}
