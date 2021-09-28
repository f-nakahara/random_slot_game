import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_slot_game/interactor/action/action_interactor_provider.dart';
import 'package:random_slot_game/interactor/player/player_interactor_provider.dart';
import 'package:random_slot_game/interactor/target/target_interactor_provider.dart';
import 'package:random_slot_game/presentation/home/widget/start_button/start_button_state.dart';

final startButtonController = Provider.autoDispose<StartButtonController>(
  (ref) {
    final players = ref.watch(playerInteractorProvider).data?.value ?? [];
    final targets = ref.watch(targetInteractorProvider).data?.value ?? [];
    final actions = ref.watch(actionInteractorProvider).data?.value ?? [];
    final state = StartButtonState(
      isEnabled: players.isNotEmpty && targets.isNotEmpty && actions.isNotEmpty,
    );
    return StartButtonController(state: state);
  },
);

class StartButtonController {
  StartButtonController({
    required this.state,
  });

  final StartButtonState state;
}
