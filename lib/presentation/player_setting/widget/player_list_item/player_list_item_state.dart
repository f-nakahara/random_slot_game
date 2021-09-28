import 'package:equatable/equatable.dart';
import 'package:random_slot_game/domain/entity/player/player.dart';

class PlayerListItemState extends Equatable {
  final String id;
  final String name;
  final bool isSelected;

  const PlayerListItemState._({
    required this.id,
    required this.name,
    required this.isSelected,
  });

  factory PlayerListItemState.from(Player player) {
    return PlayerListItemState._(
      id: player.id,
      name: player.name,
      isSelected: player.isSelected,
    );
  }

  @override
  List<Object?> get props => [id];
}
