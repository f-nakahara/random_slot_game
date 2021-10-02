import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_slot_game/interactor/slot_interactor/slot_interactor.dart';
import 'package:random_slot_game/interactor/slot_interactor/slot_interactor_provider.dart';
import 'package:random_slot_game/presentation/home/widget/start_button/start_button_state.dart';

final startButtonController = Provider.autoDispose<StartButtonController>(
  (ref) {
    final slot = ref.watch(slotInteractorProvider).slot;
    final isEnabled = slot.players.isNotEmpty &&
        slot.targets.isNotEmpty &&
        slot.actions.isNotEmpty;
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
