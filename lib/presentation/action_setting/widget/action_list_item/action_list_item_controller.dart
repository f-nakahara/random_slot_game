import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_slot_game/interactor/action/action_interactor.dart';
import 'package:random_slot_game/interactor/action/action_interactor_provider.dart';
import 'package:random_slot_game/presentation/action_setting/widget/action_list_item/action_list_item_state.dart';

final actionListItemController =
    Provider.autoDispose.family<ActionListItemController, ActionListItemState>(
  (ref, state) {
    return ActionListItemController(
      interactor: ref.read(actionInteractorProvider.notifier),
      state: state,
    );
  },
);

class ActionListItemController {
  ActionListItemController({
    required ActionInteractor interactor,
    required this.state,
  }) : _interactor = interactor;

  final ActionInteractor _interactor;
  final ActionListItemState state;

  /// 参加・不参加
  Future<void> toggle() async {
    await _interactor.updateAction(state.id, isSelected: !state.isSelected);
  }

  /// 削除
  Future<void> delete() async {
    await _interactor.deleteAction(state.id);
  }
}
