import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_slot_game/domain/repository/i_action_repository.dart';
import 'package:random_slot_game/infrastructure/datasource/action_sqflite/action_sqflite_provider.dart';
import 'package:random_slot_game/infrastructure/repository/action/action_repository.dart';

final actionRepositoryProvider = Provider<IActionRepository>(
  (ref) => ActionRepository(
    sqf: ref.read(actionSqfliteProvider),
  ),
);
