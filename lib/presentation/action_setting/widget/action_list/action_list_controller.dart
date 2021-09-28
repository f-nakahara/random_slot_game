import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_slot_game/interactor/action/action_interactor_provider.dart';
import 'package:random_slot_game/presentation/action_setting/widget/action_list/action_list_state.dart';

final actionListController = Provider<ActionListController>((ref) {
  final asyncValue = ref.watch(actionInteractorProvider);
  return asyncValue.when(
    data: (penalties) {
      final state = ActionListState.from(penalties);
      return ActionListController(state: AsyncData(state));
    },
    loading: () {
      return ActionListController(state: const AsyncLoading());
    },
    error: (error, stack) {
      return ActionListController(state: AsyncError(error));
    },
  );
});

class ActionListController {
  ActionListController({required this.state});

  final AsyncValue<ActionListState> state;
}
