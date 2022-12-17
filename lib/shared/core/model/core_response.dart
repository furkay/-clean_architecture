import 'dart:convert';

/// This class is used to return the response from the server.
class CoreResponse {
  //// This is the constructor of the class.
  const CoreResponse({
    required this.jsonData,
    required this.code,
  });

  /// This is the json data of the response.
  final dynamic jsonData;

  /// This is the status code of the response.
  final int code;

  /// Returns the decoded JSON as a [Map<String, dynamic>].
  Map<String, Object?> get data => jsonData is String
      ? jsonDecode(jsonData as String) as Map<String, Object?>
      : {};
}
