import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_slot_game/core/l10n/app_localization.dart';
import 'package:random_slot_game/core/util/navigator_util.dart';
import 'package:random_slot_game/presentation/common/text_form_dialog.dart';
import 'package:random_slot_game/presentation/player_setting/widget/player_create_form/player_create_form_controller.dart';

class PlayerCreateForm extends HookConsumerWidget {
  const PlayerCreateForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.read(playerCreateFormController.notifier);
    final textEditingController = useTextEditingController();
    final localization = AppLocalization.of(context)!;
    final isEnable = ref.watch(playerCreateFormController).isEnabled;
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: TextFormDialog(
        onSaved: isEnable
            ? () async {
                await controller.create(name: textEditingController.text);
                NavigatorUtil.pop(context);
              }
            : null,
        title: localization.createTitle(localization.player),
        controller: textEditingController,
        validator: (value) => controller.validate(value, localization),
        maxLength: controller.maxNameLength,
        onChanged: (value) => controller.onChanged(value, localization),
      ),
    );
  }
}
