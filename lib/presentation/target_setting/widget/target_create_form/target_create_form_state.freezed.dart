// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'target_create_form_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TargetCreateFormStateTearOff {
  const _$TargetCreateFormStateTearOff();

  _TargetCreateFormState call({bool isEnabled = false}) {
    return _TargetCreateFormState(
      isEnabled: isEnabled,
    );
  }
}

/// @nodoc
const $TargetCreateFormState = _$TargetCreateFormStateTearOff();

/// @nodoc
mixin _$TargetCreateFormState {
  bool get isEnabled => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TargetCreateFormStateCopyWith<TargetCreateFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TargetCreateFormStateCopyWith<$Res> {
  factory $TargetCreateFormStateCopyWith(TargetCreateFormState value,
          $Res Function(TargetCreateFormState) then) =
      _$TargetCreateFormStateCopyWithImpl<$Res>;
  $Res call({bool isEnabled});
}

/// @nodoc
class _$TargetCreateFormStateCopyWithImpl<$Res>
    implements $TargetCreateFormStateCopyWith<$Res> {
  _$TargetCreateFormStateCopyWithImpl(this._value, this._then);

  final TargetCreateFormState _value;
  // ignore: unused_field
  final $Res Function(TargetCreateFormState) _then;

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
abstract class _$TargetCreateFormStateCopyWith<$Res>
    implements $TargetCreateFormStateCopyWith<$Res> {
  factory _$TargetCreateFormStateCopyWith(_TargetCreateFormState value,
          $Res Function(_TargetCreateFormState) then) =
      __$TargetCreateFormStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isEnabled});
}

/// @nodoc
class __$TargetCreateFormStateCopyWithImpl<$Res>
    extends _$TargetCreateFormStateCopyWithImpl<$Res>
    implements _$TargetCreateFormStateCopyWith<$Res> {
  __$TargetCreateFormStateCopyWithImpl(_TargetCreateFormState _value,
      $Res Function(_TargetCreateFormState) _then)
      : super(_value, (v) => _then(v as _TargetCreateFormState));

  @override
  _TargetCreateFormState get _value => super._value as _TargetCreateFormState;

  @override
  $Res call({
    Object? isEnabled = freezed,
  }) {
    return _then(_TargetCreateFormState(
      isEnabled: isEnabled == freezed
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_TargetCreateFormState implements _TargetCreateFormState {
  const _$_TargetCreateFormState({this.isEnabled = false});

  @JsonKey(defaultValue: false)
  @override
  final bool isEnabled;

  @override
  String toString() {
    return 'TargetCreateFormState(isEnabled: $isEnabled)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TargetCreateFormState &&
            (identical(other.isEnabled, isEnabled) ||
                const DeepCollectionEquality()
                    .equals(other.isEnabled, isEnabled)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isEnabled);

  @JsonKey(ignore: true)
  @override
  _$TargetCreateFormStateCopyWith<_TargetCreateFormState> get copyWith =>
      __$TargetCreateFormStateCopyWithImpl<_TargetCreateFormState>(
          this, _$identity);
}

abstract class _TargetCreateFormState implements TargetCreateFormState {
  const factory _TargetCreateFormState({bool isEnabled}) =
      _$_TargetCreateFormState;

  @override
  bool get isEnabled => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TargetCreateFormStateCopyWith<_TargetCreateFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
