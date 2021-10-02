import 'package:flutter/material.dart';
import 'package:random_slot_game/core/constant/app_constant.dart';
import 'package:random_slot_game/core/l10n/app_localization.dart';
import 'package:random_slot_game/presentation/common/add_explanation.dart';
import 'package:random_slot_game/presentation/common/check_explanation.dart';
import 'package:random_slot_game/presentation/target_setting/widget/target_create_button/taget_create_button.dart';
import 'package:random_slot_game/presentation/target_setting/widget/target_list/target_list.dart';

/// プレイヤー設定画面
class TargetSettingPage extends StatelessWidget {
  const TargetSettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: const [
            /// 説明文
            _Explanation(),

            /// ターゲット一覧
            Expanded(child: TargetList()),
          ],
        ),
      ),

      /// ターゲット作成ボタン
      floatingActionButton: const TargetCreateButton(),
    );
  }
}

class _Explanation extends StatelessWidget {
  const _Explanation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalization.of(context)!;
    return Padding(
      padding: const EdgeInsets.all(AppConstant.normalPaddingValue),
      child: Column(
        children: [
          CheckExplanation(subject: localization.target),
          const SizedBox(height: 5),
          AddExplanation(subject: localization.target),
        ],
      ),
    );
  }
}
