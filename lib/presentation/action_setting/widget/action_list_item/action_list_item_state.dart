import 'package:equatable/equatable.dart';
import 'package:random_slot_game/domain/entity/action/action.dart';

class ActionListItemState extends Equatable {
  final String id;
  final String name;
  final bool isSelected;

  const ActionListItemState._({
    required this.id,
    required this.name,
    required this.isSelected,
  });

  factory ActionListItemState.from(Action action) {
    return ActionListItemState._(
      id: action.id,
      name: action.name,
      isSelected: action.isSelected,
    );
  }

  @override
  List<Object?> get props => [id];
}
