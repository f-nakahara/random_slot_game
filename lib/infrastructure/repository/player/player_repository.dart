import 'package:random_slot_game/domain/entity/player/player.dart';
import 'package:random_slot_game/domain/repository/i_player_repository.dart';
import 'package:random_slot_game/infrastructure/datasource/player_sqflite/i_player_sqflite.dart';

class PlayerRepository implements IPlayerRepository {
  PlayerRepository({
    required IPlayerSqflite sqf,
  }) : _sqf = sqf;

  final IPlayerSqflite _sqf;
  @override
  Future<Player> find(String id) async {
    try {
      final data = await _sqf.find(id);
      final player = data.toEntity();
      return player;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Player?> findByName(String name) async {
    final result = await _sqf.findByName(name);
    if (result != null) {
      final player = result.toEntity();
      return player;
    }
  }

  @override
  Future<List<Player>> findAll() async {
    try {
      final data = await _sqf.findAll();
      return data.map((e) => e.toEntity()).toList();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> save(Player player) async {
    try {
      await _sqf.save(player);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> update(Player player) async {
    try {
      await _sqf.update(player);
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
