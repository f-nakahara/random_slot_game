// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'target.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TargetTearOff {
  const _$TargetTearOff();

  _Target call(
      {required String id,
      required String name,
      required bool isSelected,
      required DateTime createdAt,
      required DateTime updatedAt}) {
    return _Target(
      id: id,
      name: name,
      isSelected: isSelected,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}

/// @nodoc
const $Target = _$TargetTearOff();

/// @nodoc
mixin _$Target {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool get isSelected => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TargetCopyWith<Target> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TargetCopyWith<$Res> {
  factory $TargetCopyWith(Target value, $Res Function(Target) then) =
      _$TargetCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      bool isSelected,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class _$TargetCopyWithImpl<$Res> implements $TargetCopyWith<$Res> {
  _$TargetCopyWithImpl(this._value, this._then);

  final Target _value;
  // ignore: unused_field
  final $Res Function(Target) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? isSelected = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isSelected: isSelected == freezed
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$TargetCopyWith<$Res> implements $TargetCopyWith<$Res> {
  factory _$TargetCopyWith(_Target value, $Res Function(_Target) then) =
      __$TargetCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      bool isSelected,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$TargetCopyWithImpl<$Res> extends _$TargetCopyWithImpl<$Res>
    implements _$TargetCopyWith<$Res> {
  __$TargetCopyWithImpl(_Target _value, $Res Function(_Target) _then)
      : super(_value, (v) => _then(v as _Target));

  @override
  _Target get _value => super._value as _Target;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? isSelected = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_Target(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isSelected: isSelected == freezed
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_Target implements _Target {
  const _$_Target(
      {required this.id,
      required this.name,
      required this.isSelected,
      required this.createdAt,
      required this.updatedAt});

  @override
  final String id;
  @override
  final String name;
  @override
  final bool isSelected;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'Target(id: $id, name: $name, isSelected: $isSelected, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Target &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.isSelected, isSelected) ||
                const DeepCollectionEquality()
                    .equals(other.isSelected, isSelected)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(isSelected) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt);

  @JsonKey(ignore: true)
  @override
  _$TargetCopyWith<_Target> get copyWith =>
      __$TargetCopyWithImpl<_Target>(this, _$identity);
}

abstract class _Target implements Target {
  const factory _Target(
      {required String id,
      required String name,
      required bool isSelected,
      required DateTime createdAt,
      required DateTime updatedAt}) = _$_Target;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  bool get isSelected => throw _privateConstructorUsedError;
  @override
  DateTime get createdAt => throw _privateConstructorUsedError;
  @override
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TargetCopyWith<_Target> get copyWith => throw _privateConstructorUsedError;
}
