import 'package:random_slot_game/domain/entity/target/target.dart';
import 'package:random_slot_game/domain/repository/i_target_repository.dart';
import 'package:random_slot_game/infrastructure/datasource/target_sqflite/i_target_sqflite.dart';

class TargetRepository implements ITargetRepository {
  TargetRepository({required ITargetSqlite sqf}) : _sqf = sqf;

  final ITargetSqlite _sqf;

  @override
  Future<Target> find(String id) async {
    // TODO: implement find
    throw UnimplementedError();
  }

  @override
  Future<Target?> findByName(String name) {
    // TODO: implement findByName
    throw UnimplementedError();
  }

  @override
  Future<List<Target>> findAll() async {
    final result = await _sqf.findAll();
    final targets = result.map((e) => e.toEntity()).toList();
    return targets;
  }

  @override
  Future<void> save(Target target) async {
    // TODO: implement save
    throw UnimplementedError();
  }

  @override
  Future<void> update(Target target) async {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Future<void> delete(String id) async {
    // TODO: implement delete
    throw UnimplementedError();
  }
}
