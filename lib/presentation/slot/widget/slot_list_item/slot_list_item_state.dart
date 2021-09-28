import 'package:freezed_annotation/freezed_annotation.dart';

part 'slot_list_item_state.freezed.dart';

@freezed
class SlotListItemState with _$SlotListItemState {
  const factory SlotListItemState({
    required SlotListItemType type,
  }) = _SlotListItemState;
}

enum SlotListItemType {
  player,
  target,
  action,
}
