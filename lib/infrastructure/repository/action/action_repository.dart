import 'package:random_slot_game/domain/entity/action/action.dart';
import 'package:random_slot_game/domain/repository/i_action_repository.dart';

class ActionRepository implements IActionRepository {
  ActionRepository({
    required IPenaltyDatasource localDatasource,
  }) : _localDatasource = localDatasource;

  final IPenaltyDatasource _localDatasource;
  @override
  Future<Action> find(String id) async {
    try {
      final data = await _localDatasource.find(id);
      final penalty = data.toEntity();
      return penalty;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Action?> findByName(String name) async {
    final result = await _localDatasource.findByName(name);
    if (result != null) {
      final penalty = result.toEntity();
      return penalty;
    }
  }

  @override
  Future<List<Action>> findAll() async {
    try {
      final data = await _localDatasource.findAll();
      return data.map((e) => e.toEntity()).toList();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> save(Action penalty) async {
    try {
      await _localDatasource.save(penalty);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> update(Action penalty) async {
    try {
      await _localDatasource.update(penalty);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> delete(String id) async {
    try {
      await _localDatasource.delete(id);
    } catch (e) {
      rethrow;
    }
  }
}
