import 'package:flutter/material.dart';
import 'package:random_slot_game/core/constant/app_constant.dart';
import 'package:random_slot_game/core/l10n/app_localization.dart';
import 'package:random_slot_game/presentation/action_setting/widget/action_create_button/action_create_button.dart';
import 'package:random_slot_game/presentation/action_setting/widget/action_list/action_list.dart';
import 'package:random_slot_game/presentation/common/add_explanation.dart';
import 'package:random_slot_game/presentation/common/check_explanation.dart';

/// アクション設定画面
class ActionSettingPage extends StatelessWidget {
  const ActionSettingPage({Key? key}) : super(key: key);

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
                  CheckExplanation(subject: localization.action),
                  const SizedBox(height: 5),
                  AddExplanation(subject: localization.action),
                ],
              ),
            ),
            const Expanded(child: ActionList()),
          ],
        ),
      ),
      floatingActionButton: const ActionCreateButton(),
    );
  }
}
