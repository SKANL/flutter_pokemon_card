import 'package:freezed_annotation/freezed_annotation.dart';

/// Custom JSON converter that handles fields that can be either a String or `List<String>`
/// Some API fields like 'evolvesFrom' can return either format
class StringOrListConverter implements JsonConverter<List<String>?, dynamic> {
  const StringOrListConverter();

  @override
  List<String>? fromJson(dynamic json) {
    if (json == null) {
      return null;
    } else if (json is String) {
      // If it's a single string, wrap it in a list
      return [json];
    } else if (json is List) {
      // If it's already a list, convert to List<String>
      return json.map((e) => e.toString()).toList();
    }
    return null;
  }

  @override
  dynamic toJson(List<String>? object) {
    return object; // Keep as list when serializing
  }
}
