import 'package:flutter/material.dart';

class SlotControlButton extends StatelessWidget {
  const SlotControlButton({Key? key}) : super(key: key);

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
