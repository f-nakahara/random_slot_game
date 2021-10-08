import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_slot_game/domain/repository/i_slot_repository.dart';

import 'slot_interactor_state.dart';

class SlotInteractor extends StateNotifier<SlotInteractorState> {
  SlotInteractor({required ISlotRepository repository})
      : _repository = repository,
        super(const SlotInteractorState()) {
    getSlot();
  }

  final ISlotRepository _repository;

  Future<void> getSlot() async {
    final slot = await _repository.find();
    if (mounted) {
      state = state.copyWith(slot: slot);
    }
  }
}
