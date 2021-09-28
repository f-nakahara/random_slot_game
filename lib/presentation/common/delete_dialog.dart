import 'package:flutter/material.dart';
import 'package:random_slot_game/core/l10n/app_localization.dart';
import 'package:random_slot_game/core/util/navigator_util.dart';

class DeleteDialog extends StatelessWidget {
  const DeleteDialog({
    Key? key,
    required this.onDelete,
    required this.playerName,
  }) : super(key: key);

  final Function() onDelete;
  final String playerName;

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalization.of(context)!;
    return AlertDialog(
      title: Text(playerName),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(localization.deletionNotice),
        ],
      ),
      actions: [
        ElevatedButton(
          onPressed: onDelete,
          child: Text(localization.delete),
        ),
        OutlinedButton(
          onPressed: () {
            NavigatorUtil.pop(context);
          },
          child: Text(localization.cancel),
        ),
      ],
    );
  }
}
