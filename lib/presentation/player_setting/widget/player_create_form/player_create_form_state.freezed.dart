// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'player_create_form_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PlayerCreateFormStateTearOff {
  const _$PlayerCreateFormStateTearOff();

  _PlayerCreateFormState call({bool isEnabled = false}) {
    return _PlayerCreateFormState(
      isEnabled: isEnabled,
    );
  }
}

/// @nodoc
const $PlayerCreateFormState = _$PlayerCreateFormStateTearOff();

/// @nodoc
mixin _$PlayerCreateFormState {
  bool get isEnabled => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlayerCreateFormStateCopyWith<PlayerCreateFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerCreateFormStateCopyWith<$Res> {
  factory $PlayerCreateFormStateCopyWith(PlayerCreateFormState value,
          $Res Function(PlayerCreateFormState) then) =
      _$PlayerCreateFormStateCopyWithImpl<$Res>;
  $Res call({bool isEnabled});
}

/// @nodoc
class _$PlayerCreateFormStateCopyWithImpl<$Res>
    implements $PlayerCreateFormStateCopyWith<$Res> {
  _$PlayerCreateFormStateCopyWithImpl(this._value, this._then);

  final PlayerCreateFormState _value;
  // ignore: unused_field
  final $Res Function(PlayerCreateFormState) _then;

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
abstract class _$PlayerCreateFormStateCopyWith<$Res>
    implements $PlayerCreateFormStateCopyWith<$Res> {
  factory _$PlayerCreateFormStateCopyWith(_PlayerCreateFormState value,
          $Res Function(_PlayerCreateFormState) then) =
      __$PlayerCreateFormStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isEnabled});
}

/// @nodoc
class __$PlayerCreateFormStateCopyWithImpl<$Res>
    extends _$PlayerCreateFormStateCopyWithImpl<$Res>
    implements _$PlayerCreateFormStateCopyWith<$Res> {
  __$PlayerCreateFormStateCopyWithImpl(_PlayerCreateFormState _value,
      $Res Function(_PlayerCreateFormState) _then)
      : super(_value, (v) => _then(v as _PlayerCreateFormState));

  @override
  _PlayerCreateFormState get _value => super._value as _PlayerCreateFormState;

  @override
  $Res call({
    Object? isEnabled = freezed,
  }) {
    return _then(_PlayerCreateFormState(
      isEnabled: isEnabled == freezed
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_PlayerCreateFormState implements _PlayerCreateFormState {
  const _$_PlayerCreateFormState({this.isEnabled = false});

  @JsonKey(defaultValue: false)
  @override
  final bool isEnabled;

  @override
  String toString() {
    return 'PlayerCreateFormState(isEnabled: $isEnabled)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PlayerCreateFormState &&
            (identical(other.isEnabled, isEnabled) ||
                const DeepCollectionEquality()
                    .equals(other.isEnabled, isEnabled)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isEnabled);

  @JsonKey(ignore: true)
  @override
  _$PlayerCreateFormStateCopyWith<_PlayerCreateFormState> get copyWith =>
      __$PlayerCreateFormStateCopyWithImpl<_PlayerCreateFormState>(
          this, _$identity);
}

abstract class _PlayerCreateFormState implements PlayerCreateFormState {
  const factory _PlayerCreateFormState({bool isEnabled}) =
      _$_PlayerCreateFormState;

  @override
  bool get isEnabled => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PlayerCreateFormStateCopyWith<_PlayerCreateFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
