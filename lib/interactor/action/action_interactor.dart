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

  Future<List<Action>> getAllActionList() async {
    final actions = await _repository.findAll();
    return actions;
  }

  Future<Action> createAction({required String name}) async {
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
      final result = await _repository.find(id);
      return result;
    }
  }

  Future<Action> updateAction(String id, {required bool? isSelected}) async {
    final oldAction = await _repository.find(id);
    final newAction =
        oldAction.copyWith(isSelected: isSelected ?? oldAction.isSelected);
    await _repository.update(newAction);
    return newAction;
  }

  Future<void> deleteAction(String id) async {
    await _repository.delete(id);
  }

  /// 同じ名前のペナルティーが既に存在しているか確認
  Future<bool> _isDuplicated({required String name}) async {
    final penalty = await _repository.findByName(name);
    return penalty != null;
  }
}
