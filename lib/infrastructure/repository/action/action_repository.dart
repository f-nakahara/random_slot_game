import 'package:random_slot_game/domain/entity/action/action.dart';
import 'package:random_slot_game/domain/repository/i_action_repository.dart';
import 'package:random_slot_game/infrastructure/datasource/action_sqflite/i_action_sqflite.dart';

class ActionRepository implements IActionRepository {
  ActionRepository({
    required IActionSqflite sqf,
  }) : _sqf = sqf;

  final IActionSqflite _sqf;
  @override
  Future<Action> find(String id) async {
    try {
      final data = await _sqf.find(id);
      final penalty = data.toEntity();
      return penalty;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Action?> findByName(String name) async {
    final result = await _sqf.findByName(name);
    if (result != null) {
      final penalty = result.toEntity();
      return penalty;
    }
  }

  @override
  Future<List<Action>> findAll() async {
    try {
      final data = await _sqf.findAll();
      return data.map((e) => e.toEntity()).toList();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> save(Action penalty) async {
    try {
      await _sqf.save(penalty);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> update(Action penalty) async {
    try {
      await _sqf.update(penalty);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> delete(String id) async {
    try {
      await _sqf.delete(id);
    } catch (e) {
      rethrow;
    }
  }
}
