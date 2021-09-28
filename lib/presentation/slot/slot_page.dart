import 'package:flutter/material.dart';
import 'package:random_slot_game/core/constant/app_constant.dart';
import 'package:random_slot_game/presentation/slot/widget/slot_control_button/slot_control_button.dart';
import 'package:random_slot_game/presentation/slot/widget/slot_list/slot_list.dart';

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
            SlotList(),
            SizedBox(height: 50),
            SlotControlButton(),
          ],
        ),
      ),
    );
  }
}
