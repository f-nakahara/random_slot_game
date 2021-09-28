import 'package:flutter/material.dart';
import 'package:random_slot_game/presentation/slot/widget/slot_list_item/slot_list_item.dart';

class SlotList extends StatelessWidget {
  const SlotList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SlotListItem(SlotListItemType.player),
        SlotListItem(SlotListItemType.target),
        SlotListItem(SlotListItemType.penalty),
      ],
    );
  }
}
