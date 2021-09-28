import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_slot_game/interactor/player/player_interactor.dart';
import 'package:random_slot_game/interactor/player/player_interactor_provider.dart';
import 'package:random_slot_game/presentation/player_setting/widget/player_list_item/player_list_item_state.dart';

final playerListItemController =
    Provider.autoDispose.family<PlayerListItemController, PlayerListItemState>(
  (ref, state) {
    return PlayerListItemController(
      interactor: ref.read(playerInteractorProvider.notifier),
      state: state,
    );
  },
);

class PlayerListItemController {
  PlayerListItemController({
    required PlayerInteractor interactor,
    required this.state,
  }) : _interactor = interactor;

  final PlayerInteractor _interactor;
  final PlayerListItemState state;

  /// 参加・不参加
  Future<void> toggle() async {
    await _interactor.updatePlayer(state.id, isSelected: !state.isSelected);
  }

  /// 削除
  Future<void> delete() async {
    await _interactor.deletePlayer(state.id);
  }
}
