import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_slot_game/interactor/player/player_interactor_provider.dart';
import 'package:random_slot_game/presentation/player_setting/widget/player_list/player_list_state.dart';

final playerListController = Provider<PlayerListController>((ref) {
  final asyncValue = ref.watch(playerInteractorProvider);
  return asyncValue.when(
    data: (players) {
      final state = PlayerListState.from(players);
      return PlayerListController(state: AsyncData(state));
    },
    loading: () {
      return PlayerListController(state: const AsyncLoading());
    },
    error: (error, stack) {
      return PlayerListController(state: AsyncError(error));
    },
  );
});

class PlayerListController {
  PlayerListController({required this.state});

  final AsyncValue<PlayerListState> state;
}
