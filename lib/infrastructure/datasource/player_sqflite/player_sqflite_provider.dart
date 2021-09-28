import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_slot_game/infrastructure/datasource/player_sqflite/i_player_sqflite.dart';
import 'package:random_slot_game/infrastructure/datasource/player_sqflite/player_sqflite.dart';

/// ローカル用データソース
final playerSqfliteProvider = Provider<IPlayerSqflite>(
  (ref) => PlayerSqflite(),
);
