import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_slot_game/domain/repository/i_player_repository.dart';
import 'package:random_slot_game/infrastructure/repository/player/player_repository.dart';

final playerRepositoryProvider = Provider<IPlayerRepository>(
  (ref) => PlayerRepository(
    localDatasource: ref.read(localPlayerDatasourceProvider),
  ),
);
