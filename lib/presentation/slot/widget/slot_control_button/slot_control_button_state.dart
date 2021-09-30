import 'package:freezed_annotation/freezed_annotation.dart';

part 'slot_control_button_state.freezed.dart';

@freezed
class SlotControlButtonState with _$SlotControlButtonState {
  const factory SlotControlButtonState({
    @Default(true) bool isEnabled,
  }) = _SlotControlButtonState;
}
