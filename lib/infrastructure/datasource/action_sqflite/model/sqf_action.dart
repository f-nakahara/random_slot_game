import 'package:random_slot_game/domain/entity/action/action.dart';

class SQFAction {
  static const keyId = 'id';
  static const keyName = 'name';
  static const keyIsSelected = 'is_selected';
  static const keyCreatedAt = 'created_at';
  static const keyUpdatedAt = 'updated_at';

  final String id;
  final String name;
  final int isSelected;
  final int createdAt;
  final int updatedAt;

  const SQFAction({
    required this.id,
    required this.name,
    required this.isSelected,
    required this.createdAt,
    required this.updatedAt,
  });

  factory SQFAction.fromMap(Map<String, dynamic> map) {
    return SQFAction(
      id: map[keyId],
      name: map[keyName],
      isSelected: map[keyIsSelected],
      createdAt: map[keyCreatedAt],
      updatedAt: map[keyUpdatedAt],
    );
  }

  Action toEntity() {
    return Action(
      id: id,
      name: name,
      isSelected: isSelected == 1,
      createdAt: DateTime.fromMillisecondsSinceEpoch(createdAt),
      updatedAt: DateTime.fromMillisecondsSinceEpoch(updatedAt),
    );
  }

  static Map<String, dynamic> convertToMap(Action action) {
    return {
      keyId: action.id,
      keyName: action.name,
      keyIsSelected: action.isSelected ? 1 : 0,
      keyCreatedAt: action.createdAt.millisecondsSinceEpoch,
      keyUpdatedAt: action.updatedAt.millisecondsSinceEpoch,
    };
  }
}
