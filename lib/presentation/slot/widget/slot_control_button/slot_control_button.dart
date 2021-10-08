import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_slot_game/core/l10n/app_localization.dart';
import 'package:random_slot_game/presentation/common/large_button.dart';
import 'package:random_slot_game/presentation/slot/widget/slot_control_button/slot_control_button_controller.dart';

class SlotControlButton extends ConsumerWidget {
  const SlotControlButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localization = AppLocalization.of(context)!;
    final controller = ref.read(slotControlButtonController.notifier);
    final isEnabled = ref.watch(slotControlButtonController).isEnabled;
    return LargeButton(
      text: localization.play,
      onPressed: isEnabled ? controller.play : null,
    );
  }
}
