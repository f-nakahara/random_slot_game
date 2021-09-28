import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_slot_game/core/exception/duplicate_exception.dart';
import 'package:random_slot_game/domain/entity/player/player.dart';
import 'package:random_slot_game/domain/repository/i_player_repository.dart';
import 'package:uuid/uuid.dart';

class PlayerInteractor extends StateNotifier<AsyncValue<List<Player>>> {
  PlayerInteractor({
    required IPlayerRepository repository,
  })  : _repository = repository,
        super(const AsyncLoading());
  final IPlayerRepository _repository;

  /// 全てのプレイヤーを取得する
  Future<void> getAllPlayerList() async {
    final players = await _repository.findAll();
    state = AsyncData(players);
  }

  /// プレイヤーを作成する
  Future<void> createPlayer({required String name}) async {
    final isDuplicated = await _isDuplicated(name: name);
    if (isDuplicated) {
      throw DuplicateException();
    } else {
      final id = const Uuid().v4();
      final date = DateTime.now();
      final player = Player(
        id: id,
        name: name,
        isSelected: true,
        createdAt: date,
        updatedAt: date,
      );
      await _repository.save(player);
      final asyncValue = state.data;
      if (asyncValue != null) {
        final players = asyncValue.value;
        final index = players.indexWhere(
          (element) => element.id == id,
        );
        players[index] = player;
        state = AsyncData(players);
      }
    }
  }

  /// プレイヤーを更新する
  Future<void> updatePlayer(String id, {required bool? isSelected}) async {
    final oldPlayer = await _repository.find(id);
    final newPlayer =
        oldPlayer.copyWith(isSelected: isSelected ?? oldPlayer.isSelected);
    await _repository.update(newPlayer);
    final asyncValue = state.data;
    if (asyncValue != null) {
      final players = asyncValue.value;
      final index = players.indexWhere(
        (element) => element.id == id,
      );
      players[index] = newPlayer;
      state = AsyncData(players);
    }
  }

  /// プレイヤーを削除する
  Future<void> deletePlayer(String id) async {
    await _repository.delete(id);
    final asyncValue = state.data;
    if (asyncValue != null) {
      final players = asyncValue.value;
      players.removeWhere((element) => element.id == id);
      state = AsyncData(players);
    }
  }

  /// 同じ名前のプレイヤーが既に存在しているか確認
  Future<bool> _isDuplicated({required String name}) async {
    final player = await _repository.findByName(name);
    return player != null;
  }
}
