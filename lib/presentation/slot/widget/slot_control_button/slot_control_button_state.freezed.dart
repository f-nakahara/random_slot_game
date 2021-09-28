// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'slot_control_button_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SlotControlButtonStateTearOff {
  const _$SlotControlButtonStateTearOff();

  _SlotControlButtonState call(
      {SlotControlButtonType type = SlotControlButtonType.play}) {
    return _SlotControlButtonState(
      type: type,
    );
  }
}

/// @nodoc
const $SlotControlButtonState = _$SlotControlButtonStateTearOff();

/// @nodoc
mixin _$SlotControlButtonState {
  SlotControlButtonType get type => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SlotControlButtonStateCopyWith<SlotControlButtonState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SlotControlButtonStateCopyWith<$Res> {
  factory $SlotControlButtonStateCopyWith(SlotControlButtonState value,
          $Res Function(SlotControlButtonState) then) =
      _$SlotControlButtonStateCopyWithImpl<$Res>;
  $Res call({SlotControlButtonType type});
}

/// @nodoc
class _$SlotControlButtonStateCopyWithImpl<$Res>
    implements $SlotControlButtonStateCopyWith<$Res> {
  _$SlotControlButtonStateCopyWithImpl(this._value, this._then);

  final SlotControlButtonState _value;
  // ignore: unused_field
  final $Res Function(SlotControlButtonState) _then;

  @override
  $Res call({
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SlotControlButtonType,
    ));
  }
}

/// @nodoc
abstract class _$SlotControlButtonStateCopyWith<$Res>
    implements $SlotControlButtonStateCopyWith<$Res> {
  factory _$SlotControlButtonStateCopyWith(_SlotControlButtonState value,
          $Res Function(_SlotControlButtonState) then) =
      __$SlotControlButtonStateCopyWithImpl<$Res>;
  @override
  $Res call({SlotControlButtonType type});
}

/// @nodoc
class __$SlotControlButtonStateCopyWithImpl<$Res>
    extends _$SlotControlButtonStateCopyWithImpl<$Res>
    implements _$SlotControlButtonStateCopyWith<$Res> {
  __$SlotControlButtonStateCopyWithImpl(_SlotControlButtonState _value,
      $Res Function(_SlotControlButtonState) _then)
      : super(_value, (v) => _then(v as _SlotControlButtonState));

  @override
  _SlotControlButtonState get _value => super._value as _SlotControlButtonState;

  @override
  $Res call({
    Object? type = freezed,
  }) {
    return _then(_SlotControlButtonState(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SlotControlButtonType,
    ));
  }
}

/// @nodoc

class _$_SlotControlButtonState implements _SlotControlButtonState {
  const _$_SlotControlButtonState({this.type = SlotControlButtonType.play});

  @JsonKey(defaultValue: SlotControlButtonType.play)
  @override
  final SlotControlButtonType type;

  @override
  String toString() {
    return 'SlotControlButtonState(type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SlotControlButtonState &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(type);

  @JsonKey(ignore: true)
  @override
  _$SlotControlButtonStateCopyWith<_SlotControlButtonState> get copyWith =>
      __$SlotControlButtonStateCopyWithImpl<_SlotControlButtonState>(
          this, _$identity);
}

abstract class _SlotControlButtonState implements SlotControlButtonState {
  const factory _SlotControlButtonState({SlotControlButtonType type}) =
      _$_SlotControlButtonState;

  @override
  SlotControlButtonType get type => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SlotControlButtonStateCopyWith<_SlotControlButtonState> get copyWith =>
      throw _privateConstructorUsedError;
}
