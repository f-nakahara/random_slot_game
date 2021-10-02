import 'package:random_slot_game/domain/entity/target/target.dart';
import 'package:random_slot_game/domain/repository/i_target_repository.dart';
import 'package:random_slot_game/infrastructure/datasource/target_sqflite/i_target_sqflite.dart';

class TargetRepository implements ITargetRepository {
  TargetRepository({
    required ITargetSqlite sqf,
  }) : _sqf = sqf;

  final ITargetSqlite _sqf;
  @override
  Future<Target> find(String id) async {
    try {
      final data = await _sqf.find(id);
      final player = data.toEntity();
      return player;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Target?> findByName(String name) async {
    final result = await _sqf.findByName(name);
    if (result != null) {
      final player = result.toEntity();
      return player;
    }
  }

  @override
  Future<List<Target>> findAll() async {
    try {
      final data = await _sqf.findAll();
      return data.map((e) => e.toEntity()).toList();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> save(Target target) async {
    try {
      await _sqf.save(target);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> update(Target target) async {
    try {
      await _sqf.update(target);
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
