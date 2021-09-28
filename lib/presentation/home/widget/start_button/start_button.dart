import 'package:flutter/material.dart';
import 'package:random_slot_game/core/l10n/app_localization.dart';
import 'package:random_slot_game/core/util/navigator_util.dart';
import 'package:random_slot_game/presentation/common/large_button.dart';
import 'package:random_slot_game/presentation/slot/slot_page.dart';

class StartButton extends StatelessWidget {
  const StartButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalization.of(context)!;
    return LargeButton(
      text: localization.start,
      onPressed: () {
        NavigatorUtil.push(context, page: const SlotPage());
      },
    );
  }
}
