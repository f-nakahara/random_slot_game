// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'target_interactor_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TargetInteractorStateTearOff {
  const _$TargetInteractorStateTearOff();

  _TargetInteractorState call({List<Target> targets = const []}) {
    return _TargetInteractorState(
      targets: targets,
    );
  }
}

/// @nodoc
const $TargetInteractorState = _$TargetInteractorStateTearOff();

/// @nodoc
mixin _$TargetInteractorState {
  List<Target> get targets => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TargetInteractorStateCopyWith<TargetInteractorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TargetInteractorStateCopyWith<$Res> {
  factory $TargetInteractorStateCopyWith(TargetInteractorState value,
          $Res Function(TargetInteractorState) then) =
      _$TargetInteractorStateCopyWithImpl<$Res>;
  $Res call({List<Target> targets});
}

/// @nodoc
class _$TargetInteractorStateCopyWithImpl<$Res>
    implements $TargetInteractorStateCopyWith<$Res> {
  _$TargetInteractorStateCopyWithImpl(this._value, this._then);

  final TargetInteractorState _value;
  // ignore: unused_field
  final $Res Function(TargetInteractorState) _then;

  @override
  $Res call({
    Object? targets = freezed,
  }) {
    return _then(_value.copyWith(
      targets: targets == freezed
          ? _value.targets
          : targets // ignore: cast_nullable_to_non_nullable
              as List<Target>,
    ));
  }
}

/// @nodoc
abstract class _$TargetInteractorStateCopyWith<$Res>
    implements $TargetInteractorStateCopyWith<$Res> {
  factory _$TargetInteractorStateCopyWith(_TargetInteractorState value,
          $Res Function(_TargetInteractorState) then) =
      __$TargetInteractorStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Target> targets});
}

/// @nodoc
class __$TargetInteractorStateCopyWithImpl<$Res>
    extends _$TargetInteractorStateCopyWithImpl<$Res>
    implements _$TargetInteractorStateCopyWith<$Res> {
  __$TargetInteractorStateCopyWithImpl(_TargetInteractorState _value,
      $Res Function(_TargetInteractorState) _then)
      : super(_value, (v) => _then(v as _TargetInteractorState));

  @override
  _TargetInteractorState get _value => super._value as _TargetInteractorState;

  @override
  $Res call({
    Object? targets = freezed,
  }) {
    return _then(_TargetInteractorState(
      targets: targets == freezed
          ? _value.targets
          : targets // ignore: cast_nullable_to_non_nullable
              as List<Target>,
    ));
  }
}

/// @nodoc

class _$_TargetInteractorState implements _TargetInteractorState {
  const _$_TargetInteractorState({this.targets = const []});

  @JsonKey(defaultValue: const [])
  @override
  final List<Target> targets;

  @override
  String toString() {
    return 'TargetInteractorState(targets: $targets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TargetInteractorState &&
            (identical(other.targets, targets) ||
                const DeepCollectionEquality().equals(other.targets, targets)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(targets);

  @JsonKey(ignore: true)
  @override
  _$TargetInteractorStateCopyWith<_TargetInteractorState> get copyWith =>
      __$TargetInteractorStateCopyWithImpl<_TargetInteractorState>(
          this, _$identity);
}

abstract class _TargetInteractorState implements TargetInteractorState {
  const factory _TargetInteractorState({List<Target> targets}) =
      _$_TargetInteractorState;

  @override
  List<Target> get targets => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TargetInteractorStateCopyWith<_TargetInteractorState> get copyWith =>
      throw _privateConstructorUsedError;
}
