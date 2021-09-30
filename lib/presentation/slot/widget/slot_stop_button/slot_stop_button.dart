import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_slot_game/core/l10n/app_localization.dart';
import 'package:random_slot_game/presentation/slot/widget/slot_list_item/slot_list_item_state.dart';
import 'package:random_slot_game/presentation/slot/widget/slot_stop_button/slot_stop_button_controller.dart';

class SlotStopButton extends ConsumerWidget {
  const SlotStopButton({Key? key, required this.type}) : super(key: key);

  final SlotListItemType type;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isEnabled = ref.watch(slotStopButtonController(type)).isEnabled;
    final controller = ref.read(slotStopButtonController(type).notifier);
    final localization = AppLocalization.of(context)!;
    return ElevatedButton(
      onPressed: isEnabled ? controller.stop : null,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Text(localization.stop),
    );
  }
}
