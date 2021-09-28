import 'package:flutter/material.dart';
import 'package:random_slot_game/core/l10n/app_localization.dart';
import 'package:random_slot_game/core/util/navigator_util.dart';

class TextFormDialog extends StatelessWidget {
  const TextFormDialog({
    Key? key,
    required this.onSaved,
    required this.title,
    required this.controller,
    this.validator,
    this.maxLength,
    this.autoValidateMode = AutovalidateMode.onUserInteraction,
    this.onChanged,
  }) : super(key: key);

  final Function()? onSaved;
  final String title;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final int? maxLength;
  final AutovalidateMode autoValidateMode;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalization.of(context)!;
    return AlertDialog(
      title: Text(title),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextFormField(
            controller: controller,
            validator: validator,
            maxLength: maxLength,
            autovalidateMode: autoValidateMode,
            onChanged: onChanged,
          ),
        ],
      ),
      actions: [
        ElevatedButton(
          onPressed: onSaved,
          child: Text(localization.create),
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
