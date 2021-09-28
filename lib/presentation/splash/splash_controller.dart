import 'package:hooks_riverpod/hooks_riverpod.dart';

final splashController = StateNotifierProvider<SplashController, bool>(
  (ref) => SplashController(ref.read),
);

class SplashController extends StateNotifier<bool> {
  SplashController(this._reader) : super(false);

  final Reader _reader;

  Future<void> init() async {
    await Future.wait([
      // _reader(playerController.notifier).init(),
      // _reader(targetController.notifier).init(),
      // _reader(penaltyController.notifier).init(),
    ]);
    state = true;
  }
}
