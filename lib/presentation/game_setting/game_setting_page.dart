import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_slot_game/core/l10n/app_localization.dart';
import 'package:random_slot_game/presentation/action_setting/action_setting_page.dart';
import 'package:random_slot_game/presentation/player_setting/player_setting_page.dart';
import 'package:random_slot_game/presentation/target_setting/target_setting_page.dart';

class GameSettingPage extends HookConsumerWidget {
  const GameSettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = useTabController(initialLength: 3);
    final localization = AppLocalization.of(context)!;
    return Scaffold(
      appBar: AppBar(
        title: Text(localization.gameSettingTitle),

        /// 設定する項目
        bottom: TabBar(
          controller: controller,
          tabs: [
            Tab(text: localization.player),
            Tab(text: localization.target),
            Tab(text: localization.action),
          ],
        ),
      ),

      /// 設定画面
      body: TabBarView(
        controller: controller,
        children: const [
          PlayerSettingPage(),
          TargetSettingPage(),
          ActionSettingPage(),
        ],
      ),
    );
  }
}
