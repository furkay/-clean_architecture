part of 'posts_page_cubit.dart';

@freezed

/// Post Page State
class PostsPageState with _$PostsPageState {
  /// Post Page State constructor
  factory PostsPageState({
    required PageStatus status,
    @Default([]) List<Post> posts,
    Failure? exception,
  }) = _PostsPageState;

  /// Default inital state
  factory PostsPageState.initial() =>
      PostsPageState(status: PageStatus.initial);
}
