import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_slot_game/infrastructure/datasource/action_sqflite/action_sqflite.dart';
import 'package:random_slot_game/infrastructure/datasource/action_sqflite/i_action_sqflite.dart';

/// ローカル用データソース
final actionSqfliteProvider = Provider<IActionSqflite>(
  (ref) => ActionSqflite(),
);
