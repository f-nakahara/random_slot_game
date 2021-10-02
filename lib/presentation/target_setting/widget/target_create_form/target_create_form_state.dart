import 'package:freezed_annotation/freezed_annotation.dart';

part 'target_create_form_state.freezed.dart';

@freezed
class TargetCreateFormState with _$TargetCreateFormState {
  const factory TargetCreateFormState({
    @Default(false) bool isEnabled,
  }) = _TargetCreateFormState;
}
