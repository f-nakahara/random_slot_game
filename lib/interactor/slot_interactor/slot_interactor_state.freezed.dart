// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'slot_interactor_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SlotInteractorStateTearOff {
  const _$SlotInteractorStateTearOff();

  _SlotInteractorState call({Slot slot = const Slot()}) {
    return _SlotInteractorState(
      slot: slot,
    );
  }
}

/// @nodoc
const $SlotInteractorState = _$SlotInteractorStateTearOff();

/// @nodoc
mixin _$SlotInteractorState {
  Slot get slot => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SlotInteractorStateCopyWith<SlotInteractorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SlotInteractorStateCopyWith<$Res> {
  factory $SlotInteractorStateCopyWith(
          SlotInteractorState value, $Res Function(SlotInteractorState) then) =
      _$SlotInteractorStateCopyWithImpl<$Res>;
  $Res call({Slot slot});

  $SlotCopyWith<$Res> get slot;
}

/// @nodoc
class _$SlotInteractorStateCopyWithImpl<$Res>
    implements $SlotInteractorStateCopyWith<$Res> {
  _$SlotInteractorStateCopyWithImpl(this._value, this._then);

  final SlotInteractorState _value;
  // ignore: unused_field
  final $Res Function(SlotInteractorState) _then;

  @override
  $Res call({
    Object? slot = freezed,
  }) {
    return _then(_value.copyWith(
      slot: slot == freezed
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as Slot,
    ));
  }

  @override
  $SlotCopyWith<$Res> get slot {
    return $SlotCopyWith<$Res>(_value.slot, (value) {
      return _then(_value.copyWith(slot: value));
    });
  }
}

/// @nodoc
abstract class _$SlotInteractorStateCopyWith<$Res>
    implements $SlotInteractorStateCopyWith<$Res> {
  factory _$SlotInteractorStateCopyWith(_SlotInteractorState value,
          $Res Function(_SlotInteractorState) then) =
      __$SlotInteractorStateCopyWithImpl<$Res>;
  @override
  $Res call({Slot slot});

  @override
  $SlotCopyWith<$Res> get slot;
}

/// @nodoc
class __$SlotInteractorStateCopyWithImpl<$Res>
    extends _$SlotInteractorStateCopyWithImpl<$Res>
    implements _$SlotInteractorStateCopyWith<$Res> {
  __$SlotInteractorStateCopyWithImpl(
      _SlotInteractorState _value, $Res Function(_SlotInteractorState) _then)
      : super(_value, (v) => _then(v as _SlotInteractorState));

  @override
  _SlotInteractorState get _value => super._value as _SlotInteractorState;

  @override
  $Res call({
    Object? slot = freezed,
  }) {
    return _then(_SlotInteractorState(
      slot: slot == freezed
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as Slot,
    ));
  }
}

/// @nodoc

class _$_SlotInteractorState implements _SlotInteractorState {
  const _$_SlotInteractorState({this.slot = const Slot()});

  @JsonKey(defaultValue: const Slot())
  @override
  final Slot slot;

  @override
  String toString() {
    return 'SlotInteractorState(slot: $slot)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SlotInteractorState &&
            (identical(other.slot, slot) ||
                const DeepCollectionEquality().equals(other.slot, slot)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(slot);

  @JsonKey(ignore: true)
  @override
  _$SlotInteractorStateCopyWith<_SlotInteractorState> get copyWith =>
      __$SlotInteractorStateCopyWithImpl<_SlotInteractorState>(
          this, _$identity);
}

abstract class _SlotInteractorState implements SlotInteractorState {
  const factory _SlotInteractorState({Slot slot}) = _$_SlotInteractorState;

  @override
  Slot get slot => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SlotInteractorStateCopyWith<_SlotInteractorState> get copyWith =>
      throw _privateConstructorUsedError;
}
