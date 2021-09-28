import 'package:freezed_annotation/freezed_annotation.dart';

part 'player_create_form_state.freezed.dart';

@freezed
class PlayerCreateFormState with _$PlayerCreateFormState {
  const factory PlayerCreateFormState({
    @Default(false) bool isEnabled,
  }) = _PlayerCreateFormState;
}
