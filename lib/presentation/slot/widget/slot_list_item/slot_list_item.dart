import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SlotListItem extends ConsumerWidget {
  const SlotListItem(this.type, {Key? key}) : super(key: key);

  final SlotListItemType type;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(slotListItemViewModel(type));
    return Row(
      children: [
        Expanded(child: Text(state.value)),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          child: Text('STOP'),
        ),
      ],
    );
  }
}
