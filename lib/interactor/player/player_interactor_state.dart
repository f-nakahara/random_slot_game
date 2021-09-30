import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:random_slot_game/domain/entity/player/player.dart';

part 'player_interactor_state.freezed.dart';

@freezed
class PlayerInteractorState with _$PlayerInteractorState {
  const factory PlayerInteractorState({
    @Default([]) List<Player> players,
  }) = _PlayerInteractorState;
}
