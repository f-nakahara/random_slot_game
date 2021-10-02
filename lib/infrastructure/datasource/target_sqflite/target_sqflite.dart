import 'package:path/path.dart';
import 'package:random_slot_game/core/config/app_config.dart';
import 'package:random_slot_game/core/exception/not_found_exception.dart';
import 'package:random_slot_game/core/util/localization_util.dart';
import 'package:random_slot_game/domain/entity/target/target.dart';
import 'package:random_slot_game/infrastructure/datasource/target_sqflite/i_target_sqflite.dart';
import 'package:random_slot_game/infrastructure/datasource/target_sqflite/model/sqf_target.dart';
import 'package:sqflite/sqflite.dart';

class TargetSqflite implements ITargetSqlite {
  /// テーブル名
  static const _tableName = 'target';

  @override
  Future<SQFTarget> find(String id) async {
    try {
      final db = await _getDatabase();
      final result = await db.query(
        _tableName,
        where: '${SQFTarget.keyId}=?',
        whereArgs: [id],
      );
      if (result.isEmpty) {
        throw NotFountException();
      }
      final map = result.first;
      final data = SQFTarget.fromMap(map);
      return data;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<SQFTarget?> findByName(String name) async {
    try {
      final db = await _getDatabase();
      final result = await db.query(
        _tableName,
        where: '${SQFTarget.keyName}=?',
        whereArgs: [name],
      );
      if (result.isNotEmpty) {
        final player = SQFTarget.fromMap(result.first);
        return player;
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<SQFTarget>> findAll() async {
    try {
      final db = await _getDatabase();
      final result =
          await db.query(_tableName, orderBy: SQFTarget.keyCreatedAt);
      return result.map((e) => SQFTarget.fromMap(e)).toList();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> save(Target target) async {
    try {
      final db = await _getDatabase();
      final map = SQFTarget.convertToMap(target);
      await db.insert(_tableName, map);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> update(Target target) async {
    try {
      final db = await _getDatabase();
      final map = SQFTarget.convertToMap(target);
      await db.update(
        _tableName,
        map,
        where: '${SQFTarget.keyId}=?',
        whereArgs: [target.id],
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
        where: '${SQFTarget.keyId}=?',
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
        join(await getDatabasesPath(), AppConfig.targetDBFileName),
        version: AppConfig.targetDBVersion,
        onCreate: (db, version) async {
          await db.execute(
            '''
          CREATE TABLE $_tableName (
          ${SQFTarget.keyId} TEXT PRIMARY KEY, 
          ${SQFTarget.keyName} TEXT UNIQUE, 
          ${SQFTarget.keyIsSelected} INTEGER, 
          ${SQFTarget.keyCreatedAt} INTEGER, 
          ${SQFTarget.keyUpdatedAt} INTEGER 
          )
          ''',
          );
          await _saveDefaultValue(db);
        },
      );
      return db;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> _saveDefaultValue(Database db) async {
    final date = DateTime.now();
    final localization = LocalizationUtil.localization;
    final defaultValues = [
      Target(
        id: '1',
        name: localization.defaultTargetName1,
        isSelected: true,
        createdAt: date,
        updatedAt: date,
      ),
      Target(
        id: '2',
        name: localization.defaultTargetName2,
        isSelected: true,
        createdAt: date,
        updatedAt: date,
      ),
      Target(
        id: '3',
        name: localization.defaultTargetName3,
        isSelected: true,
        createdAt: date,
        updatedAt: date,
      ),
      Target(
        id: '4',
        name: localization.defaultTargetName4,
        isSelected: true,
        createdAt: date,
        updatedAt: date,
      ),
    ];
    for (var value in defaultValues) {
      final data = SQFTarget.convertToMap(value);
      await db.insert(_tableName, data);
    }
  }
}
