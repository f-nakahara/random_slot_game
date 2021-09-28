import 'package:freezed_annotation/freezed_annotation.dart';

part 'action.freezed.dart';

@freezed
class Action with _$Action {
  const factory Action({
    required String id,
    required String name,
    required bool isSelected,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Action;
}
