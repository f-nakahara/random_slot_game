import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_slot_game/infrastructure/repository/slot/slot_repository_provider.dart';
import 'package:random_slot_game/interactor/action/action_interactor_provider.dart';
import 'package:random_slot_game/interactor/player/player_interactor_provider.dart';
import 'package:random_slot_game/interactor/slot_interactor/slot_interactor.dart';
import 'package:random_slot_game/interactor/target/target_interactor_provider.dart';

import 'slot_interactor_state.dart';

final slotInteractorProvider =
    StateNotifierProvider<SlotInteractor, SlotInteractorState>(
  (ref) {
    ref.watch(playerInteractorProvider);
    ref.watch(targetInteractorProvider);
    ref.watch(actionInteractorProvider);
    return SlotInteractor(
      repository: ref.read(slotRepositoryProvider),
    );
  },
);
