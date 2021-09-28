import 'package:freezed_annotation/freezed_annotation.dart';

part 'target.freezed.dart';

@freezed
class Target with _$Target {
  const factory Target({
    required String id,
    required String name,
    required bool isSelected,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Target;
}
