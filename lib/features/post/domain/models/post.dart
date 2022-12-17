import 'package:clean_architecture/features/post/data/dtos/post_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'post.freezed.dart';

@immutable
@freezed

/// Post is a model that is used to represent a post
class Post with _$Post {
  /// Post is a model that is used to represent a post
  const factory Post({
    required int id,
    required int userId,
    String? title,
    String? body,
  }) = _Post;
  const Post._();

  /// Post from fromDto
  factory Post.fromDto(PostDto dto) => Post(
        id: dto.id,
        userId: dto.userId,
        title: dto.title,
        body: dto.body,
      );

  /// Post to toDto
  PostDto get toDto => PostDto(
        id: id,
        userId: userId,
        title: title,
        body: body,
      );
}
