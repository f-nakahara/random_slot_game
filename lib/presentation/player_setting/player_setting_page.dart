import 'package:flutter/material.dart';
import 'package:random_slot_game/core/constant/app_constant.dart';
import 'package:random_slot_game/core/l10n/app_localization.dart';
import 'package:random_slot_game/presentation/common/add_explanation.dart';
import 'package:random_slot_game/presentation/common/check_explanation.dart';
import 'package:random_slot_game/presentation/player_setting/widget/player_create_button/player_create_button.dart';
import 'package:random_slot_game/presentation/player_setting/widget/player_list/player_list.dart';

/// プレイヤー設定画面
class PlayerSettingPage extends StatelessWidget {
  const PlayerSettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalization.of(context)!;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(AppConstant.normalPaddingValue),
              child: Column(
                children: [
                  CheckExplanation(subject: localization.player),
                  const SizedBox(height: 5),
                  AddExplanation(subject: localization.player),
                ],
              ),
            ),
            const Expanded(child: PlayerList()),
          ],
        ),
      ),
      floatingActionButton: const PlayerCreateButton(),
    );
  }
}
