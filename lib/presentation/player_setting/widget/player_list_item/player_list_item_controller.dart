import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_slot_game/interactor/player/player_interactor.dart';
import 'package:random_slot_game/interactor/player/player_interactor_provider.dart';
import 'package:random_slot_game/presentation/player_setting/widget/player_list_item/player_list_item_state.dart';

final playerListItemController =
    Provider.autoDispose.family<PlayerListItemController, PlayerListItemState>(
  (ref, state) {
    return PlayerListItemController(
      controller: ref.read(playerInteractorProvider.notifier),
      state: state,
    );
  },
);

class PlayerListItemController {
  PlayerListItemController({
    required PlayerInteractor controller,
    required this.state,
  }) : _controller = controller;

  final PlayerInteractor _controller;
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
