// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'player_interactor_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PlayerInteractorStateTearOff {
  const _$PlayerInteractorStateTearOff();

  _PlayerInteractorState call({List<Player> players = const []}) {
    return _PlayerInteractorState(
      players: players,
    );
  }
}

/// @nodoc
const $PlayerInteractorState = _$PlayerInteractorStateTearOff();

/// @nodoc
mixin _$PlayerInteractorState {
  List<Player> get players => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlayerInteractorStateCopyWith<PlayerInteractorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerInteractorStateCopyWith<$Res> {
  factory $PlayerInteractorStateCopyWith(PlayerInteractorState value,
          $Res Function(PlayerInteractorState) then) =
      _$PlayerInteractorStateCopyWithImpl<$Res>;
  $Res call({List<Player> players});
}

/// @nodoc
class _$PlayerInteractorStateCopyWithImpl<$Res>
    implements $PlayerInteractorStateCopyWith<$Res> {
  _$PlayerInteractorStateCopyWithImpl(this._value, this._then);

  final PlayerInteractorState _value;
  // ignore: unused_field
  final $Res Function(PlayerInteractorState) _then;

  @override
  $Res call({
    Object? players = freezed,
  }) {
    return _then(_value.copyWith(
      players: players == freezed
          ? _value.players
          : players // ignore: cast_nullable_to_non_nullable
              as List<Player>,
    ));
  }
}

/// @nodoc
abstract class _$PlayerInteractorStateCopyWith<$Res>
    implements $PlayerInteractorStateCopyWith<$Res> {
  factory _$PlayerInteractorStateCopyWith(_PlayerInteractorState value,
          $Res Function(_PlayerInteractorState) then) =
      __$PlayerInteractorStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Player> players});
}

/// @nodoc
class __$PlayerInteractorStateCopyWithImpl<$Res>
    extends _$PlayerInteractorStateCopyWithImpl<$Res>
    implements _$PlayerInteractorStateCopyWith<$Res> {
  __$PlayerInteractorStateCopyWithImpl(_PlayerInteractorState _value,
      $Res Function(_PlayerInteractorState) _then)
      : super(_value, (v) => _then(v as _PlayerInteractorState));

  @override
  _PlayerInteractorState get _value => super._value as _PlayerInteractorState;

  @override
  $Res call({
    Object? players = freezed,
  }) {
    return _then(_PlayerInteractorState(
      players: players == freezed
          ? _value.players
          : players // ignore: cast_nullable_to_non_nullable
              as List<Player>,
    ));
  }
}

/// @nodoc

class _$_PlayerInteractorState implements _PlayerInteractorState {
  const _$_PlayerInteractorState({this.players = const []});

  @JsonKey(defaultValue: const [])
  @override
  final List<Player> players;

  @override
  String toString() {
    return 'PlayerInteractorState(players: $players)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PlayerInteractorState &&
            (identical(other.players, players) ||
                const DeepCollectionEquality().equals(other.players, players)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(players);

  @JsonKey(ignore: true)
  @override
  _$PlayerInteractorStateCopyWith<_PlayerInteractorState> get copyWith =>
      __$PlayerInteractorStateCopyWithImpl<_PlayerInteractorState>(
          this, _$identity);
}

abstract class _PlayerInteractorState implements PlayerInteractorState {
  const factory _PlayerInteractorState({List<Player> players}) =
      _$_PlayerInteractorState;

  @override
  List<Player> get players => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PlayerInteractorStateCopyWith<_PlayerInteractorState> get copyWith =>
      throw _privateConstructorUsedError;
}
