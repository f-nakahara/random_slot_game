import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_slot_game/presentation/slot/widget/slot_list_item/slot_list_item_controller.dart';
import 'package:random_slot_game/presentation/slot/widget/slot_list_item/slot_list_item_state.dart';
import 'package:random_slot_game/presentation/slot/widget/slot_stop_button/slot_stop_button_state.dart';

final slotStopButtonController = StateNotifierProvider.autoDispose
    .family<SlotStopButtonController, SlotStopButtonState, SlotListItemType>(
  (ref, type) {
    final isEnabled = !ref
        .watch(slotListItemController(type).select((value) => value.isStopped));
    final state = SlotStopButtonState(isEnabled: isEnabled);
    return SlotStopButtonController(ref.read, type: type, state: state);
  },
);

class SlotStopButtonController extends StateNotifier<SlotStopButtonState> {
  SlotStopButtonController(
    this._reader, {
    required this.type,
    required SlotStopButtonState state,
  }) : super(state);

  final Reader _reader;
  final SlotListItemType type;

  /// スロットを止める
  Future<void> stop() async {
    await _reader(slotListItemController(type).notifier).stopSlot();
  }
}
