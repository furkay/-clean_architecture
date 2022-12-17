import 'package:clean_architecture/common/di/injectable.dart';
import 'package:clean_architecture/shared/core/exceptions/failure.dart';
import 'package:clean_architecture/shared/core/page_status/page_status.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_page_state.dart';
part 'splash_page_cubit.freezed.dart';

/// Splash Cubit
class SplashPageCubit extends Cubit<SplashPageState> {
  /// Splash Cubit constructor
  SplashPageCubit() : super(SplashPageState.initial());

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
