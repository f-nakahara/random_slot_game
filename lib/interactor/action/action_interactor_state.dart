import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:random_slot_game/domain/entity/action/action.dart';

part 'action_interactor_state.freezed.dart';

@freezed
class ActionInteractorState with _$ActionInteractorState {
  const factory ActionInteractorState({
    @Default([]) List<Action> actions,
  }) = _ActionInteractorState;
}
