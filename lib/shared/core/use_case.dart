import 'repository.dart';

/// [UseCase] is a base class for all use cases.
abstract class UseCase<T, S> {
  /// constructs a [UseCase] with the given [repository]
  const UseCase(this.repository);

  /// The repository of the use case.
  final CoreRepository repository;

  /// [call] is used to define the call.
  T call(S params);
}

/// [NoParams] is used to define the no params.
class NoParams {
  /// [NoParams] is used to define the no params.
  const NoParams();
}
