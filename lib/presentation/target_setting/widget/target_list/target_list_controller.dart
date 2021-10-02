import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_slot_game/interactor/target/target_interactor_provider.dart';
import 'package:random_slot_game/presentation/target_setting/widget/target_list/target_list_state.dart';

final targetListController = Provider<TargetListController>((ref) {
  final asyncValue = ref.watch(targetInteractorProvider);
  return asyncValue.when(
    data: (data) {
      final state = TargetListState.from(data.targets);
      return TargetListController(state: AsyncData(state));
    },
    loading: () {
      return TargetListController(state: const AsyncLoading());
    },
    error: (error, stack) {
      return TargetListController(state: AsyncError(error));
    },
  );
});

class TargetListController {
  TargetListController({required this.state});

  final AsyncValue<TargetListState> state;
}
