import 'package:clean_architecture/common/di/injectable.dart';
import 'package:clean_architecture/shared/core/exceptions/failure.dart';
import 'package:clean_architecture/shared/core/page_status/page_status.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_state.dart';
part 'splash_cubit.freezed.dart';

/// Splash Cubit
class SplashCubit extends Cubit<SplashState> {
  /// Splash Cubit constructor
  SplashCubit() : super(SplashState.initial());

  /// Init
  Future<void> init() async {
    try {
      emit(state.copyWith(status: PageStatus.loading));
      await configureDependencies();
      emit(state.copyWith(status: PageStatus.loaded));
    } catch (e) {
      emit(
        state.copyWith(
          status: PageStatus.error,
          exception: Failure(e.toString()),
        ),
      );
    }
  }
}
