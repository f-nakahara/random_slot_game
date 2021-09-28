import 'package:flutter/material.dart';
import 'package:random_slot_game/core/l10n/app_localization.dart';
import 'package:random_slot_game/core/util/navigator_util.dart';
import 'package:random_slot_game/presentation/common/large_button.dart';
import 'package:random_slot_game/presentation/game_setting/game_setting_page.dart';

class GameSettingButton extends StatelessWidget {
  const GameSettingButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalization.of(context)!;
    return LargeButton(
      text: localization.gameSettingTitle,
      isOutlined: true,
      onPressed: () {
        NavigatorUtil.push(
          context,
          page: const GameSettingPage(),
        );
      },
    );
  }
}
