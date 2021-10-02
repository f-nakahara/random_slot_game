import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_slot_game/core/util/navigator_util.dart';
import 'package:random_slot_game/presentation/common/check_box_card.dart';
import 'package:random_slot_game/presentation/common/delete_dialog.dart';
import 'package:random_slot_game/presentation/target_setting/widget/target_list_item/target_list_item_controller.dart';
import 'package:random_slot_game/presentation/target_setting/widget/target_list_item/target_list_item_state.dart';

class TargetListItem extends ConsumerWidget {
  const TargetListItem(this.state, {Key? key}) : super(key: key);

  final TargetListItemState state;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.read(targetListItemController(state));
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
