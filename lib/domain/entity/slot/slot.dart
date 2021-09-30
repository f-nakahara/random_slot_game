import 'package:freezed_annotation/freezed_annotation.dart';

part 'slot.freezed.dart';

@freezed
class Slot with _$Slot {
  const factory Slot({
    @Default([]) List<String> players,
    @Default([]) List<String> targets,
    @Default([]) List<String> actions,
  }) = _Slot;
}
