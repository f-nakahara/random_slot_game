import 'package:random_slot_game/domain/entity/player/player.dart';
import 'package:random_slot_game/infrastructure/datasource/player_sqflite/model/sqf_player.dart';

abstract class IPlayerSqflite {
  /// プレイヤーの取得
  Future<SQFPlayer> find(String id);

  /// プレイヤーの取得（名前検索）
  Future<SQFPlayer?> findByName(String name);

  /// プレイヤー一覧の取得
  Future<List<SQFPlayer>> findAll();

  /// プレイヤーの保存
  Future<void> save(Player player);

  /// プレイヤーの更新
  Future<void> update(Player player);

  /// プレイヤーの削除
  Future<void> delete(String id);
}
