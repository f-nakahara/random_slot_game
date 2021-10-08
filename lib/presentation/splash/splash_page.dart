import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_slot_game/core/l10n/app_localization.dart';
import 'package:random_slot_game/presentation/common/loading_indicator.dart';
import 'package:random_slot_game/presentation/home/home_page.dart';
import 'package:random_slot_game/presentation/splash/splash_controller.dart';

class SplashPage extends ConsumerWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.read(splashController.notifier);
    final localization = AppLocalization.of(context)!;
    return Scaffold(
      body: FutureBuilder(
        future: state.init(localization: localization),
        builder: (context, snapshot) {
          /// 初期処理が終了したら画面を切り替える
          if (snapshot.connectionState == ConnectionState.done) {
            return const HomePage();
          }
          return const LoadingIndicator();
        },
      ),
    );
  }
}
