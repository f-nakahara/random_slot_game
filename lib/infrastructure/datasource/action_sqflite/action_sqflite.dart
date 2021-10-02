import 'package:path/path.dart';
import 'package:random_slot_game/core/config/app_config.dart';
import 'package:random_slot_game/core/exception/not_found_exception.dart';
import 'package:random_slot_game/core/util/localization_util.dart';
import 'package:random_slot_game/domain/entity/action/action.dart';
import 'package:random_slot_game/infrastructure/datasource/action_sqflite/i_action_sqflite.dart';
import 'package:random_slot_game/infrastructure/datasource/action_sqflite/model/sqf_action.dart';
import 'package:sqflite/sqflite.dart';

class ActionSqflite implements IActionSqflite {
  /// テーブル名
  static const _tableName = 'action';

  @override
  Future<SQFAction> find(String id) async {
    try {
      final db = await _getDatabase();
      final result = await db.query(
        _tableName,
        where: '${SQFAction.keyId}=?',
        whereArgs: [id],
      );
      if (result.isEmpty) {
        throw NotFountException();
      }
      final map = result.first;
      final data = SQFAction.fromMap(map);
      return data;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<SQFAction?> findByName(String name) async {
    try {
      final db = await _getDatabase();
      final result = await db.query(
        _tableName,
        where: '${SQFAction.keyName}=?',
        whereArgs: [name],
      );
      if (result.isNotEmpty) {
        final player = SQFAction.fromMap(result.first);
        return player;
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<SQFAction>> findAll() async {
    try {
      final db = await _getDatabase();
      final result =
          await db.query(_tableName, orderBy: SQFAction.keyCreatedAt);
      return result.map((e) => SQFAction.fromMap(e)).toList();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> save(Action action) async {
    try {
      final db = await _getDatabase();
      final map = SQFAction.convertToMap(action);
      await db.insert(_tableName, map);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> update(Action action) async {
    try {
      final db = await _getDatabase();
      final map = SQFAction.convertToMap(action);
      await db.update(
        _tableName,
        map,
        where: '${SQFAction.keyId}=?',
        whereArgs: [action.id],
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
        where: '${SQFAction.keyId}=?',
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
        join(await getDatabasesPath(), AppConfig.actionDBFileName),
        version: AppConfig.actionDBVersion,
        onCreate: (db, version) async {
          await db.execute(
            '''
          CREATE TABLE $_tableName (
          ${SQFAction.keyId} TEXT PRIMARY KEY, 
          ${SQFAction.keyName} TEXT UNIQUE, 
          ${SQFAction.keyIsSelected} INTEGER, 
          ${SQFAction.keyCreatedAt} INTEGER, 
          ${SQFAction.keyUpdatedAt} INTEGER 
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
      Action(
        id: '1',
        name: localization.defaultActionName1,
        isSelected: true,
        createdAt: date,
        updatedAt: date,
      ),
      Action(
        id: '2',
        name: localization.defaultActionName2,
        isSelected: true,
        createdAt: date,
        updatedAt: date,
      ),
    ];
    for (var value in defaultValues) {
      final data = SQFAction.convertToMap(value);
      await db.insert(_tableName, data);
    }
  }
}
