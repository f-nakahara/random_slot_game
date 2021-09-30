import 'package:random_slot_game/domain/entity/slot/slot.dart';
import 'package:random_slot_game/presentation/slot/widget/slot_list_item/slot_list_item_state.dart';

class SlotListState {
  SlotListState._({
    required this.itemStates,
  });

  final List<SlotListItemState> itemStates;

  factory SlotListState.from(Slot slot) {
    return SlotListState._(itemStates: [
      SlotListItemState(
        type: SlotListItemType.player,
        values: slot.players,
        value: slot.players[0],
      ),
      SlotListItemState(
        type: SlotListItemType.target,
        values: slot.targets,
        value: slot.targets[0],
      ),
      SlotListItemState(
        type: SlotListItemType.action,
        values: slot.actions,
        value: slot.actions[0],
      ),
    ]);
  }
}
