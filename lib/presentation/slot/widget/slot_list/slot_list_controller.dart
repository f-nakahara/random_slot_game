import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_slot_game/interactor/slot_interactor/slot_interactor_provider.dart';
import 'package:random_slot_game/presentation/slot/widget/slot_list/slot_list_state.dart';

final slotListController = Provider.autoDispose<SlotListController>(
  (ref) {
    final slot = ref.watch(slotInteractorProvider).slot;
    final state = SlotListState.from(slot);
    return SlotListController(state);
  },
);

class SlotListController {
  SlotListController(this.state);

  final SlotListState state;
}
