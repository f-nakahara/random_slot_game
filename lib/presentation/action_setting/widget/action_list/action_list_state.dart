import 'package:random_slot_game/domain/entity/action/action.dart';
import 'package:random_slot_game/presentation/action_setting/widget/action_list_item/action_list_item_state.dart';

class ActionListState {
  ActionListState._({
    required this.actionStates,
  });

  final List<ActionListItemState> actionStates;

  factory ActionListState.from(List<Action> penalties) {
    final penaltyStates =
        penalties.map((e) => ActionListItemState.from(e)).toList();
    return ActionListState._(actionStates: penaltyStates);
  }
}
