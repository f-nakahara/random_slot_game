import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_slot_game/presentation/slot/widget/slot_list_item/slot_list_item_controller.dart';
import 'package:random_slot_game/presentation/slot/widget/slot_list_item/slot_list_item_state.dart';

import 'slot_control_button_state.dart';

final slotControlButtonController = StateNotifierProvider.autoDispose<
    SlotControlButtonController, SlotControlButtonState>(
  (ref) {
    final playerStopped = ref.watch(
        slotListItemController(SlotListItemType.player)
            .select((value) => value.isStopped));
    final targetStopped = ref.watch(
        slotListItemController(SlotListItemType.target)
            .select((value) => value.isStopped));
    final actionStopped = ref.watch(
        slotListItemController(SlotListItemType.action)
            .select((value) => value.isStopped));
    final isEnabled = playerStopped && targetStopped && actionStopped;
    final state = SlotControlButtonState(isEnabled: isEnabled);
    return SlotControlButtonController(ref.read, state);
  },
);

class SlotControlButtonController
    extends StateNotifier<SlotControlButtonState> {
  SlotControlButtonController(this._reader, state) : super(state);

  final Reader _reader;

  /// スロットを回す
  Future<void> play() async {
    state = state.copyWith(isEnabled: false);
    Future.wait([
      _reader(slotListItemController(SlotListItemType.player).notifier)
          .startSlot(),
      _reader(slotListItemController(SlotListItemType.target).notifier)
          .startSlot(),
      _reader(slotListItemController(SlotListItemType.action).notifier)
          .startSlot(),
    ]);
  }

  /// 初期状態に戻す
  Future<void> reset() async {
    state = state.copyWith(isEnabled: true);
  }
}
