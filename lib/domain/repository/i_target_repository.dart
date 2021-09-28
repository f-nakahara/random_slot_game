import 'package:random_slot_game/domain/entity/target/target.dart';

abstract class ITargetRepository {
  Future<Target> find(String id);
  Future<Target?> findByName(String name);
  Future<List<Target>> findAll();
  Future<void> save(Target penalty);
  Future<void> update(Target penalty);
  Future<void> delete(String id);
}
