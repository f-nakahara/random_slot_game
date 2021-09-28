import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_slot_game/domain/entity/target/target.dart';
import 'package:random_slot_game/infrastructure/repository/target/target_repository_provider.dart';
import 'package:random_slot_game/interactor/target/target_interactor.dart';

final targetInteractorProvider =
    StateNotifierProvider<TargetInteractor, AsyncValue<List<Target>>>(
  (ref) => TargetInteractor(
    repository: ref.read(targetRepositoryProvider),
  ),
);
