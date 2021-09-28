import 'package:random_slot_game/domain/entity/target/target.dart';
import 'package:random_slot_game/infrastructure/datasource/target_sqflite/model/sqf_target.dart';

abstract class ITargetSqlite {
  /// ターゲットの取得
  Future<SQFTarget> find(String id);

  /// ターゲットの取得（名前検索）
  Future<SQFTarget?> findByName(String name);

  /// ターゲット一覧の取得
  Future<List<SQFTarget>> findAll();

  /// ターゲットの保存
  Future<void> save(Target target);

  /// ターゲットの更新
  Future<void> update(Target target);

  /// ターゲットの削除
  Future<void> delete(SQFTarget id);
}
