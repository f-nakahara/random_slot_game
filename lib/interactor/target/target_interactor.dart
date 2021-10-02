import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_slot_game/core/exception/duplicate_exception.dart';
import 'package:random_slot_game/domain/entity/target/target.dart';
import 'package:random_slot_game/domain/repository/i_target_repository.dart';
import 'package:uuid/uuid.dart';

import 'target_interactor_state.dart';

class TargetInteractor
    extends StateNotifier<AsyncValue<TargetInteractorState>> {
  TargetInteractor({
    required ITargetRepository repository,
  })  : _repository = repository,
        super(const AsyncLoading());
  final ITargetRepository _repository;

  Future<void> getAllTargetList() async {
    final targets = await _repository.findAll();
    state = AsyncData(TargetInteractorState(targets: targets));
  }

  Future<void> createTarget({required String name}) async {
    final isDuplicated = await _isDuplicated(name: name);
    if (isDuplicated) {
      throw DuplicateException();
    } else {
      final id = const Uuid().v4();
      final date = DateTime.now();
      final target = Target(
        id: id,
        name: name,
        isSelected: true,
        createdAt: date,
        updatedAt: date,
      );
      await _repository.save(target);
      final asyncValue = state.data;
      if (asyncValue != null) {
        final targets = asyncValue.value.targets;
        state = AsyncData(
          asyncValue.value.copyWith(targets: [...targets, target]),
        );
      }
    }
  }

  Future<void> updateTarget(String id, {required bool? isSelected}) async {
    final oldTarget = await _repository.find(id);
    final newTarget =
        oldTarget.copyWith(isSelected: isSelected ?? oldTarget.isSelected);
    await _repository.update(newTarget);
    final asyncValue = state.data;
    if (asyncValue != null) {
      final targets = asyncValue.value.targets;
      final index = targets.indexWhere(
        (element) => element.id == id,
      );
      targets[index] = newTarget;
      state = AsyncData(
        asyncValue.value.copyWith(targets: targets),
      );
    }
  }

  Future<void> deleteTarget(String id) async {
    await _repository.delete(id);
    final asyncValue = state.data;
    if (asyncValue != null) {
      final targets = asyncValue.value.targets;
      targets.removeWhere((element) => element.id == id);
      state = AsyncData(
        asyncValue.value.copyWith(targets: targets),
      );
    }
  }

  Future<bool> _isDuplicated({required String name}) async {
    final player = await _repository.findByName(name);
    return player != null;
  }
}
