import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_slot_game/presentation/slot/widget/slot_list_item/slot_list_item_controller.dart';
import 'package:random_slot_game/presentation/slot/widget/slot_list_item/slot_list_item_state.dart';
import 'package:random_slot_game/presentation/slot/widget/slot_stop_button/slot_stop_button.dart';

class SlotListItem extends ConsumerWidget {
  const SlotListItem(this.type, {Key? key}) : super(key: key);

  final SlotListItemType type;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(slotListItemController(type)).value;
    return Row(
      children: [
        Expanded(child: Text(value)),
        SlotStopButton(
          type: type,
        ),
      ],
    );
  }
}
