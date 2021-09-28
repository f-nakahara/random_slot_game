import 'package:random_slot_game/domain/entity/player/player.dart';
import 'package:random_slot_game/domain/repository/i_player_repository.dart';

class PlayerRepository implements IPlayerRepository {
  PlayerRepository({
    required IPlayerDatasource localDatasource,
  }) : _localDatasource = localDatasource;

  final IPlayerDatasource _localDatasource;
  @override
  Future<Player> find(String id) async {
    try {
      final data = await _localDatasource.find(id);
      final player = data.toEntity();
      return player;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Player?> findByName(String name) async {
    final result = await _localDatasource.findByName(name);
    if (result != null) {
      final player = result.toEntity();
      return player;
    }
  }

  @override
  Future<List<Player>> findAll() async {
    try {
      final data = await _localDatasource.findAll();
      return data.map((e) => e.toEntity()).toList();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> save(Player player) async {
    try {
      await _localDatasource.save(player);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> update(Player player) async {
    try {
      await _localDatasource.update(player);
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
