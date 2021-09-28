import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_slot_game/domain/repository/i_target_repository.dart';
import 'package:random_slot_game/infrastructure/datasource/target_sqflite/target_sqflite_provider.dart';
import 'package:random_slot_game/infrastructure/repository/target/target_repository.dart';

final targetRepositoryProvider = Provider<ITargetRepository>(
  (ref) => TargetRepository(
    sqf: ref.read(targetSqfliteProvider),
  ),
);
