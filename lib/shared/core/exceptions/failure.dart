import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

/// This is the base class for all the exceptions that can be thrown by the

@freezed
class Failure with _$Failure {
  /// This is the base class for all the exceptions that can be thrown by the
  const factory Failure(String message) = _Failure;
}
