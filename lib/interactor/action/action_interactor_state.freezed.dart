// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'action_interactor_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ActionInteractorStateTearOff {
  const _$ActionInteractorStateTearOff();

  _ActionInteractorState call({List<Action> actions = const []}) {
    return _ActionInteractorState(
      actions: actions,
    );
  }
}

/// @nodoc
const $ActionInteractorState = _$ActionInteractorStateTearOff();

/// @nodoc
mixin _$ActionInteractorState {
  List<Action> get actions => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ActionInteractorStateCopyWith<ActionInteractorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActionInteractorStateCopyWith<$Res> {
  factory $ActionInteractorStateCopyWith(ActionInteractorState value,
          $Res Function(ActionInteractorState) then) =
      _$ActionInteractorStateCopyWithImpl<$Res>;
  $Res call({List<Action> actions});
}

/// @nodoc
class _$ActionInteractorStateCopyWithImpl<$Res>
    implements $ActionInteractorStateCopyWith<$Res> {
  _$ActionInteractorStateCopyWithImpl(this._value, this._then);

  final ActionInteractorState _value;
  // ignore: unused_field
  final $Res Function(ActionInteractorState) _then;

  @override
  $Res call({
    Object? actions = freezed,
  }) {
    return _then(_value.copyWith(
      actions: actions == freezed
          ? _value.actions
          : actions // ignore: cast_nullable_to_non_nullable
              as List<Action>,
    ));
  }
}

/// @nodoc
abstract class _$ActionInteractorStateCopyWith<$Res>
    implements $ActionInteractorStateCopyWith<$Res> {
  factory _$ActionInteractorStateCopyWith(_ActionInteractorState value,
          $Res Function(_ActionInteractorState) then) =
      __$ActionInteractorStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Action> actions});
}

/// @nodoc
class __$ActionInteractorStateCopyWithImpl<$Res>
    extends _$ActionInteractorStateCopyWithImpl<$Res>
    implements _$ActionInteractorStateCopyWith<$Res> {
  __$ActionInteractorStateCopyWithImpl(_ActionInteractorState _value,
      $Res Function(_ActionInteractorState) _then)
      : super(_value, (v) => _then(v as _ActionInteractorState));

  @override
  _ActionInteractorState get _value => super._value as _ActionInteractorState;

  @override
  $Res call({
    Object? actions = freezed,
  }) {
    return _then(_ActionInteractorState(
      actions: actions == freezed
          ? _value.actions
          : actions // ignore: cast_nullable_to_non_nullable
              as List<Action>,
    ));
  }
}

/// @nodoc

class _$_ActionInteractorState implements _ActionInteractorState {
  const _$_ActionInteractorState({this.actions = const []});

  @JsonKey(defaultValue: const [])
  @override
  final List<Action> actions;

  @override
  String toString() {
    return 'ActionInteractorState(actions: $actions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ActionInteractorState &&
            (identical(other.actions, actions) ||
                const DeepCollectionEquality().equals(other.actions, actions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(actions);

  @JsonKey(ignore: true)
  @override
  _$ActionInteractorStateCopyWith<_ActionInteractorState> get copyWith =>
      __$ActionInteractorStateCopyWithImpl<_ActionInteractorState>(
          this, _$identity);
}

abstract class _ActionInteractorState implements ActionInteractorState {
  const factory _ActionInteractorState({List<Action> actions}) =
      _$_ActionInteractorState;

  @override
  List<Action> get actions => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ActionInteractorStateCopyWith<_ActionInteractorState> get copyWith =>
      throw _privateConstructorUsedError;
}
