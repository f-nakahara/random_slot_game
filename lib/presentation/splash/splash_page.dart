import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_slot_game/presentation/home/home_page.dart';
import 'package:random_slot_game/presentation/splash/splash_controller.dart';

class SplashPage extends ConsumerWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.read(splashController.notifier);
    return Scaffold(
      body: FutureBuilder(
        future: state.init(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return const HomePage();
          }
          return Text('$runtimeType');
        },
      ),
    );
  }
}
