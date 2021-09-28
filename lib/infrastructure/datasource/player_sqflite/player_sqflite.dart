import 'package:path/path.dart';
import 'package:random_slot_game/core/config/app_config.dart';
import 'package:random_slot_game/core/exception/not_found_exception.dart';
import 'package:random_slot_game/domain/entity/player/player.dart';
import 'package:random_slot_game/infrastructure/datasource/player_sqflite/i_player_sqflite.dart';
import 'package:random_slot_game/infrastructure/datasource/player_sqflite/model/sqf_player.dart';
import 'package:sqflite/sqflite.dart';

class PlayerSqflite implements IPlayerSqflite {
  /// テーブル名
  static const _tableName = 'player';

  @override
  Future<SQFPlayer> find(String id) async {
    try {
      final db = await _getDatabase();
      final result = await db.query(
        _tableName,
        where: '${SQFPlayer.keyId}=?',
        whereArgs: [id],
      );
      if (result.isEmpty) {
        throw NotFountException();
      }
      final map = result.first;
      final data = SQFPlayer.fromMap(map);
      return data;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<SQFPlayer?> findByName(String name) async {
    try {
      final db = await _getDatabase();
      final result = await db.query(
        _tableName,
        where: '${SQFPlayer.keyName}=?',
        whereArgs: [name],
      );
      if (result.isNotEmpty) {
        final player = SQFPlayer.fromMap(result.first);
        return player;
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<SQFPlayer>> findAll() async {
    try {
      final db = await _getDatabase();
      final result =
          await db.query(_tableName, orderBy: SQFPlayer.keyCreatedAt);
      return result.map((e) => SQFPlayer.fromMap(e)).toList();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> save(Player player) async {
    try {
      final db = await _getDatabase();
      final map = SQFPlayer.convertToMap(player);
      await db.insert(_tableName, map);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> update(Player player) async {
    try {
      final db = await _getDatabase();
      final map = SQFPlayer.convertToMap(player);
      await db.update(
        _tableName,
        map,
        where: '${SQFPlayer.keyId}=?',
        whereArgs: [player.id],
      );
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> delete(String id) async {
    try {
      final db = await _getDatabase();
      await db.delete(
        _tableName,
        where: '${SQFPlayer.keyId}=?',
        whereArgs: [id],
      );
    } catch (e) {
      rethrow;
    }
  }

  /// データベース取得
  Future<Database> _getDatabase() async {
    try {
      final Database db = await openDatabase(
        join(await getDatabasesPath(), AppConfig.playerDBFileName),
        version: AppConfig.playerDBVersion,
        onCreate: (db, version) async {
          await db.execute(
            '''
          CREATE TABLE $_tableName (
          ${SQFPlayer.keyId} TEXT PRIMARY KEY, 
          ${SQFPlayer.keyName} TEXT UNIQUE, 
          ${SQFPlayer.keyIsSelected} INTEGER, 
          ${SQFPlayer.keyCreatedAt} INTEGER, 
          ${SQFPlayer.keyUpdatedAt} INTEGER 
          )
          ''',
          );
        },
      );
      return db;
    } catch (e) {
      rethrow;
    }
  }
}
