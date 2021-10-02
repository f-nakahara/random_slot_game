import 'package:flutter/material.dart';
import 'package:random_slot_game/presentation/common/create_button.dart';
import 'package:random_slot_game/presentation/target_setting/widget/target_create_form/target_create_form.dart';

class TargetCreateButton extends StatelessWidget {
  const TargetCreateButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CreateButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) {
            return const TargetCreateForm();
          },
        );
      },
    );
  }
}
