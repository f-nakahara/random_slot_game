import 'package:random_slot_game/domain/entity/player/player.dart';

abstract class IPlayerRepository {
  Future<Player> find(String id);
  Future<Player?> findByName(String name);
  Future<List<Player>> findAll();
  Future<void> save(Player penalty);
  Future<void> update(Player penalty);
  Future<void> delete(String id);
}
