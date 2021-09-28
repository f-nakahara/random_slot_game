import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_slot_game/interactor/action/action_interactor.dart';
import 'package:random_slot_game/interactor/action/action_interactor_provider.dart';
import 'package:random_slot_game/presentation/action_setting/widget/action_list_item/action_list_item_state.dart';

final actionListItemController =
    Provider.autoDispose.family<ActionListItemController, ActionListItemState>(
  (ref, state) {
    return ActionListItemController(
      controller: ref.read(actionInteractorProvider.notifier),
      state: state,
    );
  },
);

class ActionListItemController {
  ActionListItemController({
    required ActionInteractor controller,
    required this.state,
  }) : _controller = controller;

  final ActionInteractor _controller;
  final ActionListItemState state;

  /// 参加・不参加
  Future<void> toggle() async {
    await _controller.updatePenalty(state.id, isSelected: !state.isSelected);
  }

  /// 削除
  Future<void> delete() async {
    await _controller.deletePenalty(state.id);
  }
}
