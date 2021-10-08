import 'package:flutter/material.dart';
import 'package:random_slot_game/core/constant/app_constant.dart';
import 'package:random_slot_game/presentation/common/banner_adsense.dart';
import 'package:random_slot_game/presentation/slot/widget/slot_control_button/slot_control_button.dart';
import 'package:random_slot_game/presentation/slot/widget/slot_list_item/slot_list_item.dart';
import 'package:random_slot_game/presentation/slot/widget/slot_list_item/slot_list_item_state.dart';

/// スロット画面
class SlotPage extends StatelessWidget {
  const SlotPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(AppConstant.normalPaddingValue),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            /// スロット項目一覧
            SlotList(),
            SizedBox(height: 50),

            /// スロット制御ボタン
            SlotControlButton(),

            /// バナー広告
            BannerAdsense(),
          ],
        ),
      ),
    );
  }
}

class SlotList extends StatelessWidget {
  const SlotList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SlotListItem(SlotListItemType.player),
        SlotListItem(SlotListItemType.target),
        SlotListItem(SlotListItemType.action),
      ],
    );
  }
}
