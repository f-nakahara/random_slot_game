import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_slot_game/core/constant/app_constant.dart';
import 'package:random_slot_game/presentation/common/loading_indicator.dart';
import 'package:random_slot_game/presentation/target_setting/widget/target_list/target_list_controller.dart';
import 'package:random_slot_game/presentation/target_setting/widget/target_list_item/target_list_item.dart';

class TargetList extends ConsumerWidget {
  const TargetList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncValue = ref.watch(targetListController).state;
    return asyncValue.when(
      data: (data) {
        final states = data.targetStates;
        if (states.isEmpty) {
          return const SizedBox();
        }

        return ListView.builder(
          padding: const EdgeInsets.symmetric(
              horizontal: AppConstant.normalPaddingValue),
          itemCount: states.length,
          itemBuilder: (context, index) {
            final state = states[index];
            return TargetListItem(state);
          },
        );
      },
      loading: () => const LoadingIndicator(),
      error: (error, stack) => const SizedBox(), // TODO: エラー処理
    );
  }
}
