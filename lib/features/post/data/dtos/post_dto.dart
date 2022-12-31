import 'package:freezed_annotation/freezed_annotation.dart';
part 'post_dto.g.dart';
part 'post_dto.freezed.dart';

@freezed

/// PostDto is a data transfer object that is used to transfer data from the
class PostDto with _$PostDto {
  /// PostDto is a data transfer object that is used to transfer data from the
  const factory PostDto({
    required int id,
    required int userId,
    String? title,
    String? body,
  }) = _PostDto;
  const PostDto._();

  /// PostDto is a data transfer object that is used to transfer data from the
  factory PostDto.fromJson(Map<String, Object?> json) =>
      _$PostDtoFromJson(json);
}
