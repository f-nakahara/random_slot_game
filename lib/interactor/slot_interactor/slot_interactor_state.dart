import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:random_slot_game/domain/entity/slot/slot.dart';

part 'slot_interactor_state.freezed.dart';

@freezed
class SlotInteractorState with _$SlotInteractorState {
  const factory SlotInteractorState({
    @Default(Slot()) Slot slot,
  }) = _SlotInteractorState;
}
