// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'splash_page_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SplashPageState {
  PageStatus get status => throw _privateConstructorUsedError;
  Failure? get exception => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SplashPageStateCopyWith<SplashPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashPageStateCopyWith<$Res> {
  factory $SplashPageStateCopyWith(
          SplashPageState value, $Res Function(SplashPageState) then) =
      _$SplashPageStateCopyWithImpl<$Res, SplashPageState>;
  @useResult
  $Res call({PageStatus status, Failure? exception});

  $FailureCopyWith<$Res>? get exception;
}

/// @nodoc
class _$SplashPageStateCopyWithImpl<$Res, $Val extends SplashPageState>
    implements $SplashPageStateCopyWith<$Res> {
  _$SplashPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? exception = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PageStatus,
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
abstract class _$$_SplashPageStateCopyWith<$Res>
    implements $SplashPageStateCopyWith<$Res> {
  factory _$$_SplashPageStateCopyWith(
          _$_SplashPageState value, $Res Function(_$_SplashPageState) then) =
      __$$_SplashPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PageStatus status, Failure? exception});

  @override
  $FailureCopyWith<$Res>? get exception;
}

/// @nodoc
class __$$_SplashPageStateCopyWithImpl<$Res>
    extends _$SplashPageStateCopyWithImpl<$Res, _$_SplashPageState>
    implements _$$_SplashPageStateCopyWith<$Res> {
  __$$_SplashPageStateCopyWithImpl(
      _$_SplashPageState _value, $Res Function(_$_SplashPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? exception = freezed,
  }) {
    return _then(_$_SplashPageState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PageStatus,
      exception: freezed == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc

class _$_SplashPageState implements _SplashPageState {
  _$_SplashPageState({required this.status, this.exception});

  @override
  final PageStatus status;
  @override
  final Failure? exception;

  @override
  String toString() {
    return 'SplashPageState(status: $status, exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SplashPageState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, exception);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SplashPageStateCopyWith<_$_SplashPageState> get copyWith =>
      __$$_SplashPageStateCopyWithImpl<_$_SplashPageState>(this, _$identity);
}

abstract class _SplashPageState implements SplashPageState {
  factory _SplashPageState(
      {required final PageStatus status,
      final Failure? exception}) = _$_SplashPageState;

  @override
  PageStatus get status;
  @override
  Failure? get exception;
  @override
  @JsonKey(ignore: true)
  _$$_SplashPageStateCopyWith<_$_SplashPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
