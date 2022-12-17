import 'package:clean_architecture/features/post/domain/models/post.dart';
import 'package:clean_architecture/features/post/domain/use_cases/get_post_use_case.dart';
import 'package:clean_architecture/shared/core/exceptions/failure.dart';
import 'package:clean_architecture/shared/core/page_status/page_status.dart';
import 'package:clean_architecture/shared/core/use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'posts_page_state.dart';
part 'posts_page_cubit.freezed.dart';

@injectable

/// Post Page Cubit
class PostsPageCubit extends Cubit<PostsPageState> {
  /// Post Page Cubit constructor
  PostsPageCubit(this._getPostUseCase) : super(PostsPageState.initial());
  final GetPostUseCase _getPostUseCase;

  /// Initialize the cubit
  Future<void> init() async {
    emit(state.copyWith(status: PageStatus.loading));
    final result = await _getPostUseCase(const NoParams());
    result.fold(
      (failure) => emit(
        state.copyWith(
          status: PageStatus.error,
          exception: failure,
        ),
      ),
      (posts) => emit(
        state.copyWith(
          status: PageStatus.loaded,
          posts: posts,
        ),
      ),
    );
  }
}
