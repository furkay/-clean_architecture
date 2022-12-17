// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'posts_page_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PostsPageState {
  PageStatus get status => throw _privateConstructorUsedError;
  List<Post> get posts => throw _privateConstructorUsedError;
  Failure? get exception => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostsPageStateCopyWith<PostsPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostsPageStateCopyWith<$Res> {
  factory $PostsPageStateCopyWith(
          PostsPageState value, $Res Function(PostsPageState) then) =
      _$PostsPageStateCopyWithImpl<$Res, PostsPageState>;
  @useResult
  $Res call({PageStatus status, List<Post> posts, Failure? exception});

  $FailureCopyWith<$Res>? get exception;
}

/// @nodoc
class _$PostsPageStateCopyWithImpl<$Res, $Val extends PostsPageState>
    implements $PostsPageStateCopyWith<$Res> {
  _$PostsPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? posts = null,
    Object? exception = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PageStatus,
      posts: null == posts
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Post>,
      exception: freezed == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FailureCopyWith<$Res>? get exception {
    if (_value.exception == null) {
      return null;
    }

    return $FailureCopyWith<$Res>(_value.exception!, (value) {
      return _then(_value.copyWith(exception: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PostsPageStateCopyWith<$Res>
    implements $PostsPageStateCopyWith<$Res> {
  factory _$$_PostsPageStateCopyWith(
          _$_PostsPageState value, $Res Function(_$_PostsPageState) then) =
      __$$_PostsPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PageStatus status, List<Post> posts, Failure? exception});

  @override
  $FailureCopyWith<$Res>? get exception;
}

/// @nodoc
class __$$_PostsPageStateCopyWithImpl<$Res>
    extends _$PostsPageStateCopyWithImpl<$Res, _$_PostsPageState>
    implements _$$_PostsPageStateCopyWith<$Res> {
  __$$_PostsPageStateCopyWithImpl(
      _$_PostsPageState _value, $Res Function(_$_PostsPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? posts = null,
    Object? exception = freezed,
  }) {
    return _then(_$_PostsPageState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PageStatus,
      posts: null == posts
          ? _value._posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Post>,
      exception: freezed == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc

class _$_PostsPageState implements _PostsPageState {
  _$_PostsPageState(
      {required this.status, final List<Post> posts = const [], this.exception})
      : _posts = posts;

  @override
  final PageStatus status;
  final List<Post> _posts;
  @override
  @JsonKey()
  List<Post> get posts {
    if (_posts is EqualUnmodifiableListView) return _posts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_posts);
  }

  @override
  final Failure? exception;

  @override
  String toString() {
    return 'PostsPageState(status: $status, posts: $posts, exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostsPageState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._posts, _posts) &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_posts), exception);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostsPageStateCopyWith<_$_PostsPageState> get copyWith =>
      __$$_PostsPageStateCopyWithImpl<_$_PostsPageState>(this, _$identity);
}

abstract class _PostsPageState implements PostsPageState {
  factory _PostsPageState(
      {required final PageStatus status,
      final List<Post> posts,
      final Failure? exception}) = _$_PostsPageState;

  @override
  PageStatus get status;
  @override
  List<Post> get posts;
  @override
  Failure? get exception;
  @override
  @JsonKey(ignore: true)
  _$$_PostsPageStateCopyWith<_$_PostsPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
