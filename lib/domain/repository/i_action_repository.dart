import 'package:random_slot_game/domain/entity/action/action.dart';

abstract class IActionRepository {
  Future<Action> find(String id);
  Future<Action?> findByName(String name);
  Future<List<Action>> findAll();
  Future<void> save(Action penalty);
  Future<void> update(Action penalty);
  Future<void> delete(String id);
}
