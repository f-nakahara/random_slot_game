import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_slot_game/core/constant/app_constant.dart';
import 'package:random_slot_game/presentation/action_setting/widget/action_list/action_list_controller.dart';
import 'package:random_slot_game/presentation/action_setting/widget/action_list_item/action_list_item.dart';

class ActionList extends ConsumerWidget {
  const ActionList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncValue = ref.watch(actionListController).state;
    return asyncValue.when(
      data: (data) {
        final states = data.actionStates;
        if (states.isEmpty) {
          return const SizedBox();
        }

        return ListView.builder(
          padding: const EdgeInsets.symmetric(
              horizontal: AppConstant.normalPaddingValue),
          itemCount: states.length,
          itemBuilder: (context, index) {
            final state = states[index];
            return ActionListItem(state);
          },
        );
      },
      loading: () => Container(),
      error: (error, stack) => Container(),
    );
  }
}
