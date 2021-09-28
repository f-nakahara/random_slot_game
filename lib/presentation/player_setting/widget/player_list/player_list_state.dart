import 'package:random_slot_game/domain/entity/player/player.dart';
import 'package:random_slot_game/presentation/player_setting/widget/player_list_item/player_list_item_state.dart';

class PlayerListState {
  PlayerListState._({
    required this.playerStates,
  });

  final List<PlayerListItemState> playerStates;

  factory PlayerListState.from(List<Player> players) {
    final playerStates =
        players.map((e) => PlayerListItemState.from(e)).toList();
    return PlayerListState._(playerStates: playerStates);
  }
}
