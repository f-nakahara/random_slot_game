import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_slot_game/interactor/action/action_interactor_provider.dart';
import 'package:random_slot_game/interactor/player/player_interactor_provider.dart';
import 'package:random_slot_game/interactor/target/target_interactor_provider.dart';

final splashController = StateNotifierProvider<SplashController, bool>(
  (ref) => SplashController(ref.read),
);

class SplashController extends StateNotifier<bool> {
  SplashController(this._reader) : super(false);

  final Reader _reader;

  Future<void> init() async {
    await Future.wait([
      _reader(playerInteractorProvider.notifier).getAllPlayerList(),
      _reader(targetInteractorProvider.notifier).getAllTargetList(),
      _reader(actionInteractorProvider.notifier).getAllActionList(),
    ]);
    state = true;
  }
}
