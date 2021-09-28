// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'slot_list_item_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SlotListItemStateTearOff {
  const _$SlotListItemStateTearOff();

  _SlotListItemState call(
      {required SlotListItemType type, required String value}) {
    return _SlotListItemState(
      type: type,
      value: value,
    );
  }
}

/// @nodoc
const $SlotListItemState = _$SlotListItemStateTearOff();

/// @nodoc
mixin _$SlotListItemState {
  SlotListItemType get type => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SlotListItemStateCopyWith<SlotListItemState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SlotListItemStateCopyWith<$Res> {
  factory $SlotListItemStateCopyWith(
          SlotListItemState value, $Res Function(SlotListItemState) then) =
      _$SlotListItemStateCopyWithImpl<$Res>;
  $Res call({SlotListItemType type, String value});
}

/// @nodoc
class _$SlotListItemStateCopyWithImpl<$Res>
    implements $SlotListItemStateCopyWith<$Res> {
  _$SlotListItemStateCopyWithImpl(this._value, this._then);

  final SlotListItemState _value;
  // ignore: unused_field
  final $Res Function(SlotListItemState) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SlotListItemType,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SlotListItemStateCopyWith<$Res>
    implements $SlotListItemStateCopyWith<$Res> {
  factory _$SlotListItemStateCopyWith(
          _SlotListItemState value, $Res Function(_SlotListItemState) then) =
      __$SlotListItemStateCopyWithImpl<$Res>;
  @override
  $Res call({SlotListItemType type, String value});
}

/// @nodoc
class __$SlotListItemStateCopyWithImpl<$Res>
    extends _$SlotListItemStateCopyWithImpl<$Res>
    implements _$SlotListItemStateCopyWith<$Res> {
  __$SlotListItemStateCopyWithImpl(
      _SlotListItemState _value, $Res Function(_SlotListItemState) _then)
      : super(_value, (v) => _then(v as _SlotListItemState));

  @override
  _SlotListItemState get _value => super._value as _SlotListItemState;

  @override
  $Res call({
    Object? type = freezed,
    Object? value = freezed,
  }) {
    return _then(_SlotListItemState(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SlotListItemType,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SlotListItemState implements _SlotListItemState {
  const _$_SlotListItemState({required this.type, required this.value});

  @override
  final SlotListItemType type;
  @override
  final String value;

  @override
  String toString() {
    return 'SlotListItemState(type: $type, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SlotListItemState &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$SlotListItemStateCopyWith<_SlotListItemState> get copyWith =>
      __$SlotListItemStateCopyWithImpl<_SlotListItemState>(this, _$identity);
}

abstract class _SlotListItemState implements SlotListItemState {
  const factory _SlotListItemState(
      {required SlotListItemType type,
      required String value}) = _$_SlotListItemState;

  @override
  SlotListItemType get type => throw _privateConstructorUsedError;
  @override
  String get value => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SlotListItemStateCopyWith<_SlotListItemState> get copyWith =>
      throw _privateConstructorUsedError;
}
