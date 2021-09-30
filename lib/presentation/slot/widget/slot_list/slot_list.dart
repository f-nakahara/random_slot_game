import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_slot_game/presentation/slot/widget/slot_list/slot_list_controller.dart';
import 'package:random_slot_game/presentation/slot/widget/slot_list_item/slot_list_item.dart';

class SlotList extends ConsumerWidget {
  const SlotList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.read(slotListController).state;
    return Column(
      children:
          state.itemStates.map((state) => SlotListItem(state.type)).toList(),
    );
  }
}
