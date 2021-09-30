// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'slot.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SlotTearOff {
  const _$SlotTearOff();

  _Slot call(
      {List<String> players = const [],
      List<String> targets = const [],
      List<String> actions = const []}) {
    return _Slot(
      players: players,
      targets: targets,
      actions: actions,
    );
  }
}

/// @nodoc
const $Slot = _$SlotTearOff();

/// @nodoc
mixin _$Slot {
  List<String> get players => throw _privateConstructorUsedError;
  List<String> get targets => throw _privateConstructorUsedError;
  List<String> get actions => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SlotCopyWith<Slot> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SlotCopyWith<$Res> {
  factory $SlotCopyWith(Slot value, $Res Function(Slot) then) =
      _$SlotCopyWithImpl<$Res>;
  $Res call({List<String> players, List<String> targets, List<String> actions});
}

/// @nodoc
class _$SlotCopyWithImpl<$Res> implements $SlotCopyWith<$Res> {
  _$SlotCopyWithImpl(this._value, this._then);

  final Slot _value;
  // ignore: unused_field
  final $Res Function(Slot) _then;

  @override
  $Res call({
    Object? players = freezed,
    Object? targets = freezed,
    Object? actions = freezed,
  }) {
    return _then(_value.copyWith(
      players: players == freezed
          ? _value.players
          : players // ignore: cast_nullable_to_non_nullable
              as List<String>,
      targets: targets == freezed
          ? _value.targets
          : targets // ignore: cast_nullable_to_non_nullable
              as List<String>,
      actions: actions == freezed
          ? _value.actions
          : actions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$SlotCopyWith<$Res> implements $SlotCopyWith<$Res> {
  factory _$SlotCopyWith(_Slot value, $Res Function(_Slot) then) =
      __$SlotCopyWithImpl<$Res>;
  @override
  $Res call({List<String> players, List<String> targets, List<String> actions});
}

/// @nodoc
class __$SlotCopyWithImpl<$Res> extends _$SlotCopyWithImpl<$Res>
    implements _$SlotCopyWith<$Res> {
  __$SlotCopyWithImpl(_Slot _value, $Res Function(_Slot) _then)
      : super(_value, (v) => _then(v as _Slot));

  @override
  _Slot get _value => super._value as _Slot;

  @override
  $Res call({
    Object? players = freezed,
    Object? targets = freezed,
    Object? actions = freezed,
  }) {
    return _then(_Slot(
      players: players == freezed
          ? _value.players
          : players // ignore: cast_nullable_to_non_nullable
              as List<String>,
      targets: targets == freezed
          ? _value.targets
          : targets // ignore: cast_nullable_to_non_nullable
              as List<String>,
      actions: actions == freezed
          ? _value.actions
          : actions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_Slot implements _Slot {
  const _$_Slot(
      {this.players = const [],
      this.targets = const [],
      this.actions = const []});

  @JsonKey(defaultValue: const [])
  @override
  final List<String> players;
  @JsonKey(defaultValue: const [])
  @override
  final List<String> targets;
  @JsonKey(defaultValue: const [])
  @override
  final List<String> actions;

  @override
  String toString() {
    return 'Slot(players: $players, targets: $targets, actions: $actions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Slot &&
            (identical(other.players, players) ||
                const DeepCollectionEquality()
                    .equals(other.players, players)) &&
            (identical(other.targets, targets) ||
                const DeepCollectionEquality()
                    .equals(other.targets, targets)) &&
            (identical(other.actions, actions) ||
                const DeepCollectionEquality().equals(other.actions, actions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(players) ^
      const DeepCollectionEquality().hash(targets) ^
      const DeepCollectionEquality().hash(actions);

  @JsonKey(ignore: true)
  @override
  _$SlotCopyWith<_Slot> get copyWith =>
      __$SlotCopyWithImpl<_Slot>(this, _$identity);
}

abstract class _Slot implements Slot {
  const factory _Slot(
      {List<String> players,
      List<String> targets,
      List<String> actions}) = _$_Slot;

  @override
  List<String> get players => throw _privateConstructorUsedError;
  @override
  List<String> get targets => throw _privateConstructorUsedError;
  @override
  List<String> get actions => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SlotCopyWith<_Slot> get copyWith => throw _privateConstructorUsedError;
}
