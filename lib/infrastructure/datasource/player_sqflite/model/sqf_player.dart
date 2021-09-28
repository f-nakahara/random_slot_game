import 'package:random_slot_game/domain/entity/player/player.dart';

class SQFPlayer {
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

  const SQFPlayer({
    required this.id,
    required this.name,
    required this.isSelected,
    required this.createdAt,
    required this.updatedAt,
  });

  factory SQFPlayer.fromMap(Map<String, dynamic> map) {
    return SQFPlayer(
      id: map[keyId],
      name: map[keyName],
      isSelected: map[keyIsSelected],
      createdAt: map[keyCreatedAt],
      updatedAt: map[keyUpdatedAt],
    );
  }

  Player toEntity() {
    return Player(
      id: id,
      name: name,
      isSelected: isSelected == 1,
      createdAt: DateTime.fromMillisecondsSinceEpoch(createdAt),
      updatedAt: DateTime.fromMillisecondsSinceEpoch(updatedAt),
    );
  }

  static Map<String, dynamic> convertToMap(Player player) {
    return {
      keyId: player.id,
      keyName: player.name,
      keyIsSelected: player.isSelected ? 1 : 0,
      keyCreatedAt: player.createdAt.millisecondsSinceEpoch,
      keyUpdatedAt: player.updatedAt.millisecondsSinceEpoch,
    };
  }
}
