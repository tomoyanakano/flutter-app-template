// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'snack_bar_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SnackBarState {
  String get message => throw _privateConstructorUsedError;
  VoidCallback? get action => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SnackBarStateCopyWith<SnackBarState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnackBarStateCopyWith<$Res> {
  factory $SnackBarStateCopyWith(
          SnackBarState value, $Res Function(SnackBarState) then) =
      _$SnackBarStateCopyWithImpl<$Res, SnackBarState>;
  @useResult
  $Res call({String message, VoidCallback? action});
}

/// @nodoc
class _$SnackBarStateCopyWithImpl<$Res, $Val extends SnackBarState>
    implements $SnackBarStateCopyWith<$Res> {
  _$SnackBarStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? action = freezed,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as VoidCallback?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SnackBarStateImplCopyWith<$Res>
    implements $SnackBarStateCopyWith<$Res> {
  factory _$$SnackBarStateImplCopyWith(
          _$SnackBarStateImpl value, $Res Function(_$SnackBarStateImpl) then) =
      __$$SnackBarStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, VoidCallback? action});
}

/// @nodoc
class __$$SnackBarStateImplCopyWithImpl<$Res>
    extends _$SnackBarStateCopyWithImpl<$Res, _$SnackBarStateImpl>
    implements _$$SnackBarStateImplCopyWith<$Res> {
  __$$SnackBarStateImplCopyWithImpl(
      _$SnackBarStateImpl _value, $Res Function(_$SnackBarStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? action = freezed,
  }) {
    return _then(_$SnackBarStateImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as VoidCallback?,
    ));
  }
}

/// @nodoc

class _$SnackBarStateImpl implements _SnackBarState {
  const _$SnackBarStateImpl({this.message = '', this.action});

  @override
  @JsonKey()
  final String message;
  @override
  final VoidCallback? action;

  @override
  String toString() {
    return 'SnackBarState(message: $message, action: $action)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SnackBarStateImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.action, action) || other.action == action));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, action);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SnackBarStateImplCopyWith<_$SnackBarStateImpl> get copyWith =>
      __$$SnackBarStateImplCopyWithImpl<_$SnackBarStateImpl>(this, _$identity);
}

abstract class _SnackBarState implements SnackBarState {
  const factory _SnackBarState(
      {final String message, final VoidCallback? action}) = _$SnackBarStateImpl;

  @override
  String get message;
  @override
  VoidCallback? get action;
  @override
  @JsonKey(ignore: true)
  _$$SnackBarStateImplCopyWith<_$SnackBarStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
