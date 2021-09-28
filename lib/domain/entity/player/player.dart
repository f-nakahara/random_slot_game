import 'package:freezed_annotation/freezed_annotation.dart';

part 'player.freezed.dart';

@freezed
class Player with _$Player {
  const factory Player({
    required String id,
    required String name,
    required bool isSelected,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Player;
}
