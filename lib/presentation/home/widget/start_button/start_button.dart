import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_slot_game/core/l10n/app_localization.dart';
import 'package:random_slot_game/core/util/navigator_util.dart';
import 'package:random_slot_game/presentation/common/large_button.dart';
import 'package:random_slot_game/presentation/home/widget/start_button/start_button_controller.dart';
import 'package:random_slot_game/presentation/slot/slot_page.dart';

class StartButton extends ConsumerWidget {
  const StartButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localization = AppLocalization.of(context)!;
    final isEnabled = ref.watch(startButtonController).state.isEnabled;
    return LargeButton(
      text: localization.start,
      onPressed: isEnabled
          ? () => NavigatorUtil.push(context, page: const SlotPage())
          : () => showError(context, localization),
    );
  }

  /// エラーテキストの表示
  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showError(
    BuildContext context,
    AppLocalization localization,
  ) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          localization.startErrorText(
            localization.gameSettingTitle,
            localization.player,
            localization.action,
          ),
        ),
        duration: const Duration(seconds: 3),
      ),
    );
  }
}
