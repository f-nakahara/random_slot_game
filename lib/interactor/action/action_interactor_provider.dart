import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_slot_game/domain/entity/action/action.dart';
import 'package:random_slot_game/infrastructure/repository/action/action_repository_provider.dart';
import 'package:random_slot_game/interactor/action/action_interactor.dart';

final actionInteractorProvider =
    StateNotifierProvider<ActionInteractor, AsyncValue<List<Action>>>(
  (ref) => ActionInteractor(
    repository: ref.read(actionRepositoryProvider),
  ),
);
