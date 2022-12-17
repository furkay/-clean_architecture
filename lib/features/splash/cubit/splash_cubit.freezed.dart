// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'splash_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SplashState {
  PageStatus get status => throw _privateConstructorUsedError;
  Failure? get exception => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SplashStateCopyWith<SplashState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashStateCopyWith<$Res> {
  factory $SplashStateCopyWith(
          SplashState value, $Res Function(SplashState) then) =
      _$SplashStateCopyWithImpl<$Res, SplashState>;
  @useResult
  $Res call({PageStatus status, Failure? exception});

  $FailureCopyWith<$Res>? get exception;
}

/// @nodoc
class _$SplashStateCopyWithImpl<$Res, $Val extends SplashState>
    implements $SplashStateCopyWith<$Res> {
  _$SplashStateCopyWithImpl(this._value, this._then);

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
abstract class _$$_SplashStateCopyWith<$Res>
    implements $SplashStateCopyWith<$Res> {
  factory _$$_SplashStateCopyWith(
          _$_SplashState value, $Res Function(_$_SplashState) then) =
      __$$_SplashStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PageStatus status, Failure? exception});

  @override
  $FailureCopyWith<$Res>? get exception;
}

/// @nodoc
class __$$_SplashStateCopyWithImpl<$Res>
    extends _$SplashStateCopyWithImpl<$Res, _$_SplashState>
    implements _$$_SplashStateCopyWith<$Res> {
  __$$_SplashStateCopyWithImpl(
      _$_SplashState _value, $Res Function(_$_SplashState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? exception = freezed,
  }) {
    return _then(_$_SplashState(
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

class _$_SplashState implements _SplashState {
  _$_SplashState({required this.status, this.exception});

  @override
  final PageStatus status;
  @override
  final Failure? exception;

  @override
  String toString() {
    return 'SplashState(status: $status, exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SplashState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, exception);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SplashStateCopyWith<_$_SplashState> get copyWith =>
      __$$_SplashStateCopyWithImpl<_$_SplashState>(this, _$identity);
}

abstract class _SplashState implements SplashState {
  factory _SplashState(
      {required final PageStatus status,
      final Failure? exception}) = _$_SplashState;

  @override
  PageStatus get status;
  @override
  Failure? get exception;
  @override
  @JsonKey(ignore: true)
  _$$_SplashStateCopyWith<_$_SplashState> get copyWith =>
      throw _privateConstructorUsedError;
}
