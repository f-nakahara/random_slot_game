import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_slot_game/domain/repository/i_slot_repository.dart';
import 'package:random_slot_game/infrastructure/datasource/action_sqflite/action_sqflite_provider.dart';
import 'package:random_slot_game/infrastructure/datasource/player_sqflite/player_sqflite_provider.dart';
import 'package:random_slot_game/infrastructure/datasource/target_sqflite/target_sqflite_provider.dart';
import 'package:random_slot_game/infrastructure/repository/slot/slot_repository.dart';

final slotRepositoryProvider = Provider<ISlotRepository>(
  (ref) => SlotRepository(
    playerSQF: ref.read(playerSqfliteProvider),
    targetSQF: ref.read(targetSqfliteProvider),
    actionSQF: ref.read(actionSqfliteProvider),
  ),
);
