import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:random_slot_game/domain/entity/target/target.dart';

part 'target_interactor_state.freezed.dart';

@freezed
class TargetInteractorState with _$TargetInteractorState {
  const factory TargetInteractorState({
    @Default([]) List<Target> targets,
  }) = _TargetInteractorState;
}
