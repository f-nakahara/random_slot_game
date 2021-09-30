import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_slot_game/infrastructure/repository/slot/slot_repository_provider.dart';
import 'package:random_slot_game/interactor/slot_interactor/slot_interactor.dart';

import 'slot_interactor_state.dart';

final slotInteractorProvider =
    StateNotifierProvider<SlotInteractor, SlotInteractorState>(
  (ref) {
    return SlotInteractor(
      repository: ref.read(slotRepositoryProvider),
    );
  },
);
