part of 'splash_cubit.dart';

@freezed

/// Splash State
class SplashState with _$SplashState {
  /// Splash State constructor
  factory SplashState({
    required PageStatus status,
    Failure? exception,
  }) = _SplashState;

  /// Default inital state
  factory SplashState.initial() => SplashState(status: PageStatus.initial);
}
