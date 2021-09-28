import 'package:random_slot_game/domain/entity/action/action.dart';
import 'package:random_slot_game/infrastructure/datasource/action_sqflite/model/sqf_action.dart';

abstract class IActionSqflite {
  Future<SQFAction> find(String id);
  Future<SQFAction?> findByName(String name);
  Future<List<SQFAction>> findAll();
  Future<void> save(Action action);
  Future<void> update(Action action);
  Future<void> delete(String id);
}
