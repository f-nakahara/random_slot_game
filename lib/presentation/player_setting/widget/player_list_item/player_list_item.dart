import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_slot_game/core/util/navigator_util.dart';
import 'package:random_slot_game/presentation/common/check_box_card.dart';
import 'package:random_slot_game/presentation/common/delete_dialog.dart';
import 'package:random_slot_game/presentation/player_setting/widget/player_list_item/player_list_item_controller.dart';
import 'package:random_slot_game/presentation/player_setting/widget/player_list_item/player_list_item_state.dart';

class PlayerListItem extends ConsumerWidget {
  const PlayerListItem(this.state, {Key? key}) : super(key: key);

  final PlayerListItemState state;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.read(playerListItemController(state));
    return CheckBoxCard(
      title: state.name,
      onTap: (_) => controller.toggle(),
      onDelete: () {
        showDialog(
          context: context,
          builder: (context) {
            return DeleteDialog(
              onDelete: () async {
                await controller.delete();
                NavigatorUtil.pop(context);
              },
              playerName: state.name,
            );
          },
        );
      },
      isSelected: state.isSelected,
    );
  }
}
