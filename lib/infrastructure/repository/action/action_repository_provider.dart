import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_slot_game/domain/repository/i_action_repository.dart';
import 'package:random_slot_game/infrastructure/repository/action/action_repository.dart';

final actionRepositoryProvider = Provider<IActionRepository>(
  (ref) => ActionRepository(
    localDatasource: ref.read(localPenaltyDatasourceProvider),
  ),
);
