import 'package:flutter/material.dart';
import 'package:random_slot_game/presentation/common/create_button.dart';
import 'package:random_slot_game/presentation/player_setting/widget/player_create_form/player_create_form.dart';

class PlayerCreateButton extends StatelessWidget {
  const PlayerCreateButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CreateButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) {
            return const PlayerCreateForm();
          },
        );
      },
    );
  }
}
