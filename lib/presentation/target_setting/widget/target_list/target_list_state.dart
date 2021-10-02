import 'package:random_slot_game/domain/entity/target/target.dart';
import 'package:random_slot_game/presentation/target_setting/widget/target_list_item/target_list_item_state.dart';

class TargetListState {
  TargetListState._({
    required this.targetStates,
  });

  final List<TargetListItemState> targetStates;

  factory TargetListState.from(List<Target> targets) {
    final playerStates =
        targets.map((e) => TargetListItemState.from(e)).toList();
    return TargetListState._(targetStates: playerStates);
  }
}
