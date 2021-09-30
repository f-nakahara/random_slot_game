import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:random_slot_game/domain/entity/action/action.dart';
import 'package:random_slot_game/domain/entity/player/player.dart';
import 'package:random_slot_game/domain/entity/target/target.dart';

part 'slot.freezed.dart';

@freezed
class Slot with _$Slot {
  const factory Slot({
    @Default([]) List<String> players,
    @Default([]) List<String> targets,
    @Default([]) List<String> actions,
  }) = _Slot;
}
