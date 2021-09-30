import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_slot_game/infrastructure/repository/player/player_repository_provider.dart';
import 'package:random_slot_game/interactor/player/player_interactor.dart';
import 'package:random_slot_game/interactor/player/player_interactor_state.dart';

final playerInteractorProvider =
    StateNotifierProvider<PlayerInteractor, AsyncValue<PlayerInteractorState>>(
  (ref) => PlayerInteractor(
    repository: ref.read(playerRepositoryProvider),
  ),
);
