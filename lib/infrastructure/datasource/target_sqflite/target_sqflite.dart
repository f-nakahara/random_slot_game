import 'package:random_slot_game/domain/entity/target/target.dart';
import 'package:random_slot_game/infrastructure/datasource/target_sqflite/i_target_sqflite.dart';
import 'package:random_slot_game/infrastructure/datasource/target_sqflite/model/sqf_target.dart';

class TargetSqflite implements ITargetSqlite {
  @override
  Future<SQFTarget> find(String id) {
    // TODO: implement find
    throw UnimplementedError();
  }

  @override
  Future<SQFTarget?> findByName(String name) {
    // TODO: implement findByName
    throw UnimplementedError();
  }

  @override
  Future<List<SQFTarget>> findAll() async {
    final date = DateTime.now().millisecondsSinceEpoch;
    final result = [
      SQFTarget(
        id: '1',
        name: 'だけが',
        isSelected: 1,
        createdAt: date,
        updatedAt: date,
      ),
      SQFTarget(
        id: '2',
        name: 'の右の人が',
        isSelected: 1,
        createdAt: date,
        updatedAt: date,
      ),
      SQFTarget(
        id: '3',
        name: 'の左の人が',
        isSelected: 1,
        createdAt: date,
        updatedAt: date,
      ),
      SQFTarget(
        id: '4',
        name: '以外の全員が',
        isSelected: 1,
        createdAt: date,
        updatedAt: date,
      ),
    ];
    return result;
  }

  @override
  Future<void> save(Target target) {
    // TODO: implement save
    throw UnimplementedError();
  }

  @override
  Future<void> update(Target target) {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Future<void> delete(SQFTarget id) {
    // TODO: implement delete
    throw UnimplementedError();
  }
}
