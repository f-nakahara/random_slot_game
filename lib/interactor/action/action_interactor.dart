import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_slot_game/core/exception/duplicate_exception.dart';
import 'package:random_slot_game/domain/entity/action/action.dart';
import 'package:random_slot_game/domain/repository/i_action_repository.dart';
import 'package:uuid/uuid.dart';

class ActionInteractor extends StateNotifier<AsyncValue<List<Action>>> {
  ActionInteractor({
    required IActionRepository repository,
  })  : _repository = repository,
        super(const AsyncLoading());
  final IActionRepository _repository;

  Future<void> getAllActionList() async {
    final actions = await _repository.findAll();
    state = AsyncData(actions);
  }

  Future<void> createAction({required String name}) async {
    final isDuplicated = await _isDuplicated(name: name);
    if (isDuplicated) {
      throw DuplicateException();
    } else {
      final id = const Uuid().v4();
      final date = DateTime.now();
      final action = Action(
        id: id,
        name: name,
        isSelected: true,
        createdAt: date,
        updatedAt: date,
      );
      await _repository.save(action);
      final asyncValue = state.data;
      if (asyncValue != null) {
        final actions = asyncValue.value;
        actions.add(action);
        state = AsyncData(actions);
      }
    }
  }

  Future<void> updateAction(String id, {required bool? isSelected}) async {
    final oldAction = await _repository.find(id);
    final newAction =
        oldAction.copyWith(isSelected: isSelected ?? oldAction.isSelected);
    await _repository.update(newAction);
    final asyncValue = state.data;
    if (asyncValue != null) {
      final actions = asyncValue.value;
      final index = actions.indexWhere(
        (element) => element.id == id,
      );
      actions[index] = newAction;
      state = AsyncData(actions);
    }
  }

  Future<void> deleteAction(String id) async {
    await _repository.delete(id);
    final asyncValue = state.data;
    if (asyncValue != null) {
      final actions = asyncValue.value;
      actions.removeWhere((element) => element.id == id);
      state = AsyncData(actions);
    }
  }

  /// 同じ名前のペナルティーが既に存在しているか確認
  Future<bool> _isDuplicated({required String name}) async {
    final penalty = await _repository.findByName(name);
    return penalty != null;
  }
}
