import 'package:freezed_annotation/freezed_annotation.dart';

part 'action_create_form_state.freezed.dart';

@freezed
class ActionCreateFormState with _$ActionCreateFormState {
  const factory ActionCreateFormState({
    @Default(false) bool isEnabled,
  }) = _ActionCreateFormState;
}
