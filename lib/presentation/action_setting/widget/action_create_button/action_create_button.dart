import 'package:flutter/material.dart';
import 'package:random_slot_game/presentation/action_setting/widget/action_create_form/action_create_form.dart';
import 'package:random_slot_game/presentation/common/create_button.dart';

class ActionCreateButton extends StatelessWidget {
  const ActionCreateButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CreateButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) {
            return const ActionCreateForm();
          },
        );
      },
    );
  }
}
