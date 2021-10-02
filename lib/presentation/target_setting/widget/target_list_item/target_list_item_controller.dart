import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_slot_game/interactor/target/target_interactor.dart';
import 'package:random_slot_game/interactor/target/target_interactor_provider.dart';
import 'package:random_slot_game/presentation/target_setting/widget/target_list_item/target_list_item_state.dart';

final targetListItemController =
    Provider.autoDispose.family<TargetListItemController, TargetListItemState>(
  (ref, state) {
    return TargetListItemController(
      interactor: ref.read(targetInteractorProvider.notifier),
      state: state,
    );
  },
);

class TargetListItemController {
  TargetListItemController({
    required TargetInteractor interactor,
    required this.state,
  }) : _interactor = interactor;

  final TargetInteractor _interactor;
  final TargetListItemState state;

  /// 参加・不参加
  Future<void> toggle() async {
    await _interactor.updateTarget(state.id, isSelected: !state.isSelected);
  }

  /// 削除
  Future<void> delete() async {
    await _interactor.deleteTarget(state.id);
  }
}
