import 'package:flutter/material.dart';

class SlotReplayButton extends StatelessWidget {
  const SlotReplayButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        child: Text('リプレイ'),
      ),
    );
  }
}
