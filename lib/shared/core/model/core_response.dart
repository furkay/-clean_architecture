/// This class is used to return the response from the server.
class CoreResponse<T> {
  //// This is the constructor of the class.
  const CoreResponse({
    required this.jsonData,
    required this.code,
  });

  /// This is the json data of the response.
  final T jsonData;

  /// This is the status code of the response.
  final int code;
}
