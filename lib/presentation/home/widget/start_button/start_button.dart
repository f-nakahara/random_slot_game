import 'package:flutter/cupertino.dart';
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
    final controller = ref.read(startButtonController);
    return LargeButton(
      text: localization.start,
      onPressed: isEnabled
          ? () async {
              await showLoading(context, controller);
              NavigatorUtil.push(context, page: const SlotPage());
            }
          : () => showError(context, localization),
    );
  }

  Future<dynamic> showLoading(
      BuildContext context, StartButtonController controller) {
    return showDialog(
      context: context,
      builder: (context) {
        return _LoadingDialog(controller: controller);
      },
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
            localization.target,
            localization.action,
          ),
        ),
        duration: const Duration(seconds: 3),
      ),
    );
  }
}

class _LoadingDialog extends StatelessWidget {
  const _LoadingDialog({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final StartButtonController controller;

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalization.of(context)!;
    WidgetsBinding.instance?.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(milliseconds: 100));
      await controller.getSlot();
      Navigator.pop(context);
    });
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const CircularProgressIndicator(),
          const SizedBox(height: 20),
          Text(localization.loading),
        ],
      ),
    );
  }
}
