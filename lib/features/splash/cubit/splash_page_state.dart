part of 'splash_page_cubit.dart';

@freezed

/// Splash State
class SplashPageState with _$SplashPageState {
  /// Splash State constructor
  factory SplashPageState({
    required PageStatus status,
    Failure? exception,
  }) = _SplashPageState;

  /// Default inital state
  factory SplashPageState.initial() =>
      SplashPageState(status: PageStatus.initial);
}
