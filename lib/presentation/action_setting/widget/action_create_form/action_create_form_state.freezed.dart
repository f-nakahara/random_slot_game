// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'action_create_form_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ActionCreateFormStateTearOff {
  const _$ActionCreateFormStateTearOff();

  _ActionCreateFormState call({bool isEnabled = false}) {
    return _ActionCreateFormState(
      isEnabled: isEnabled,
    );
  }
}

/// @nodoc
const $ActionCreateFormState = _$ActionCreateFormStateTearOff();

/// @nodoc
mixin _$ActionCreateFormState {
  bool get isEnabled => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ActionCreateFormStateCopyWith<ActionCreateFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActionCreateFormStateCopyWith<$Res> {
  factory $ActionCreateFormStateCopyWith(ActionCreateFormState value,
          $Res Function(ActionCreateFormState) then) =
      _$ActionCreateFormStateCopyWithImpl<$Res>;
  $Res call({bool isEnabled});
}

/// @nodoc
class _$ActionCreateFormStateCopyWithImpl<$Res>
    implements $ActionCreateFormStateCopyWith<$Res> {
  _$ActionCreateFormStateCopyWithImpl(this._value, this._then);

  final ActionCreateFormState _value;
  // ignore: unused_field
  final $Res Function(ActionCreateFormState) _then;

  @override
  $Res call({
    Object? isEnabled = freezed,
  }) {
    return _then(_value.copyWith(
      isEnabled: isEnabled == freezed
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$ActionCreateFormStateCopyWith<$Res>
    implements $ActionCreateFormStateCopyWith<$Res> {
  factory _$ActionCreateFormStateCopyWith(_ActionCreateFormState value,
          $Res Function(_ActionCreateFormState) then) =
      __$ActionCreateFormStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isEnabled});
}

/// @nodoc
class __$ActionCreateFormStateCopyWithImpl<$Res>
    extends _$ActionCreateFormStateCopyWithImpl<$Res>
    implements _$ActionCreateFormStateCopyWith<$Res> {
  __$ActionCreateFormStateCopyWithImpl(_ActionCreateFormState _value,
      $Res Function(_ActionCreateFormState) _then)
      : super(_value, (v) => _then(v as _ActionCreateFormState));

  @override
  _ActionCreateFormState get _value => super._value as _ActionCreateFormState;

  @override
  $Res call({
    Object? isEnabled = freezed,
  }) {
    return _then(_ActionCreateFormState(
      isEnabled: isEnabled == freezed
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ActionCreateFormState implements _ActionCreateFormState {
  const _$_ActionCreateFormState({this.isEnabled = false});

  @JsonKey(defaultValue: false)
  @override
  final bool isEnabled;

  @override
  String toString() {
    return 'ActionCreateFormState(isEnabled: $isEnabled)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ActionCreateFormState &&
            (identical(other.isEnabled, isEnabled) ||
                const DeepCollectionEquality()
                    .equals(other.isEnabled, isEnabled)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isEnabled);

  @JsonKey(ignore: true)
  @override
  _$ActionCreateFormStateCopyWith<_ActionCreateFormState> get copyWith =>
      __$ActionCreateFormStateCopyWithImpl<_ActionCreateFormState>(
          this, _$identity);
}

abstract class _ActionCreateFormState implements ActionCreateFormState {
  const factory _ActionCreateFormState({bool isEnabled}) =
      _$_ActionCreateFormState;

  @override
  bool get isEnabled => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ActionCreateFormStateCopyWith<_ActionCreateFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
