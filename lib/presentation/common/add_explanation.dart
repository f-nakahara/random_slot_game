import 'package:flutter/material.dart';
import 'package:random_slot_game/core/l10n/app_localization.dart';

class AddExplanation extends StatelessWidget {
  const AddExplanation({
    Key? key,
    required this.subject,
  }) : super(key: key);

  final String subject;

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalization.of(context)!;
    return SizedBox(
      width: double.infinity,
      child: Text(
        localization.addExplanation(subject),
        style: const TextStyle(
          fontSize: 12,
          color: Colors.grey,
        ),
        textAlign: TextAlign.start,
      ),
    );
  }
}
