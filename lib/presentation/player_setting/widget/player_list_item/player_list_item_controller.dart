import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_slot_game/presentation/player_setting/widget/player_list_item/player_list_item_state.dart';

final playerListItemController =
    Provider.autoDispose.family<PlayerListItemController, PlayerListItemState>(
  (ref, state) {
    return PlayerListItemController(
      controller: ref.read(playerController.notifier),
      state: state,
    );
  },
);

class PlayerListItemController {
  PlayerListItemController({
    required PlayerController controller,
    required this.state,
  }) : _controller = controller;

  final PlayerController _controller;
  final PlayerListItemState state;

  /// 参加・不参加
  Future<void> toggle() async {
    await _controller.updatePlayer(state.id, isSelected: !state.isSelected);
  }

  /// 削除
  Future<void> delete() async {
    await _controller.deletePlayer(state.id);
  }
}
