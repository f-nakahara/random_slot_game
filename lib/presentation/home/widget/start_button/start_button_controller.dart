import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_slot_game/interactor/action/action_interactor_provider.dart';
import 'package:random_slot_game/interactor/player/player_interactor_provider.dart';
import 'package:random_slot_game/interactor/slot_interactor/slot_interactor.dart';
import 'package:random_slot_game/interactor/slot_interactor/slot_interactor_provider.dart';
import 'package:random_slot_game/interactor/target/target_interactor_provider.dart';
import 'package:random_slot_game/presentation/home/widget/start_button/start_button_state.dart';

final startButtonController = Provider.autoDispose<StartButtonController>(
  (ref) {
    final players =
        ref.watch(playerInteractorProvider).data?.value.players ?? [];
    final targets =
        ref.watch(targetInteractorProvider).data?.value.targets ?? [];
    final actions =
        ref.watch(actionInteractorProvider).data?.value.actions ?? [];
    final isEnabled =
        players.isNotEmpty && targets.isNotEmpty && actions.isNotEmpty;
    final state = StartButtonState(
      isEnabled: isEnabled,
    );
    return StartButtonController(
      state: state,
      interactor: ref.read(slotInteractorProvider.notifier),
    );
  },
);

class StartButtonController {
  StartButtonController({
    required this.state,
    required SlotInteractor interactor,
  }) : _interactor = interactor;

  final StartButtonState state;
  final SlotInteractor _interactor;

  Future<void> getSlot() async {
    await _interactor.getSlot();
  }
}
