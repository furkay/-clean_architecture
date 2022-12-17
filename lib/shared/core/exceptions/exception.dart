/// [CoreException] is the base class for all exceptions in the core library.
abstract class CoreException implements Exception {
  /// This method is used to define the message.
  const CoreException({this.message});

  /// This property is used to define the message.
  final String? message;
}
