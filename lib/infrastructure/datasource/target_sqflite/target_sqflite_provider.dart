import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_slot_game/infrastructure/datasource/target_sqflite/i_target_sqflite.dart';
import 'package:random_slot_game/infrastructure/datasource/target_sqflite/target_sqflite.dart';

final targetSqfliteProvider = Provider<ITargetSqlite>(
  (ref) => TargetSqflite(),
);
