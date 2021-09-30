import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_slot_game/infrastructure/repository/target/target_repository_provider.dart';
import 'package:random_slot_game/interactor/target/target_interactor.dart';
import 'package:random_slot_game/interactor/target/target_interactor_state.dart';

final targetInteractorProvider =
    StateNotifierProvider<TargetInteractor, AsyncValue<TargetInteractorState>>(
  (ref) => TargetInteractor(
    repository: ref.read(targetRepositoryProvider),
  ),
);
