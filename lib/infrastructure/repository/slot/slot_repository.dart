import 'package:random_slot_game/domain/entity/slot/slot.dart';
import 'package:random_slot_game/domain/repository/i_slot_repository.dart';
import 'package:random_slot_game/infrastructure/datasource/action_sqflite/i_action_sqflite.dart';
import 'package:random_slot_game/infrastructure/datasource/player_sqflite/i_player_sqflite.dart';
import 'package:random_slot_game/infrastructure/datasource/target_sqflite/i_target_sqflite.dart';

class SlotRepository implements ISlotRepository {
  SlotRepository({
    required IPlayerSqflite playerSQF,
    required ITargetSqlite targetSQF,
    required IActionSqflite actionSQF,
  })  : _playerSQF = playerSQF,
        _targetSQF = targetSQF,
        _actionSQF = actionSQF;

  final IPlayerSqflite _playerSQF;
  final ITargetSqlite _targetSQF;
  final IActionSqflite _actionSQF;

  @override
  Future<Slot> find() async {
    final playersData = await _playerSQF.findAll();
    final targetsData = await _targetSQF.findAll();
    final actionsData = await _actionSQF.findAll();

    final playerEntities = playersData.map((e) => e.toEntity()).toList();
    final targetEntities = targetsData.map((e) => e.toEntity()).toList();
    final actionEntities = actionsData.map((e) => e.toEntity()).toList();

    playerEntities.shuffle();
    targetEntities.shuffle();
    actionEntities.shuffle();

    final players = playerEntities
        .where((element) => element.isSelected)
        .map((e) => e.name)
        .toList();
    final targets = targetEntities.map((e) => e.name).toList();
    final actions = actionEntities.map((e) => e.name).toList();

    final slot = Slot(players: players, targets: targets, actions: actions);
    return slot;
  }
}
