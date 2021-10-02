import 'package:equatable/equatable.dart';
import 'package:random_slot_game/domain/entity/target/target.dart';

class TargetListItemState extends Equatable {
  final String id;
  final String name;
  final bool isSelected;

  const TargetListItemState._({
    required this.id,
    required this.name,
    required this.isSelected,
  });

  factory TargetListItemState.from(Target target) {
    return TargetListItemState._(
      id: target.id,
      name: target.name,
      isSelected: target.isSelected,
    );
  }

  @override
  List<Object?> get props => [id];
}
