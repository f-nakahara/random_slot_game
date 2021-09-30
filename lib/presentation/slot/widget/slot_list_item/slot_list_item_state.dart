import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:random_slot_game/domain/entity/slot/slot.dart';

part 'slot_list_item_state.freezed.dart';

@freezed
class SlotListItemState with _$SlotListItemState {
  const factory SlotListItemState._({
    required SlotListItemType type,
    required String value,
    required List<String> values,
    @Default(true) isStopped,
  }) = _SlotListItemState;

  factory SlotListItemState.from(Slot slot, SlotListItemType type) {
    late final List<String> values;
    switch (type) {
      case SlotListItemType.player:
        values = slot.players;
        break;
      case SlotListItemType.target:
        values = slot.targets;
        break;
      case SlotListItemType.action:
        values = slot.actions;
        break;
    }
    return SlotListItemState._(
      type: type,
      value: values[0],
      values: values,
    );
  }
}

enum SlotListItemType {
  player,
  target,
  action,
}
