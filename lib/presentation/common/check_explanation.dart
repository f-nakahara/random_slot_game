import 'package:flutter/material.dart';
import 'package:random_slot_game/core/l10n/app_localization.dart';

class CheckExplanation extends StatelessWidget {
  const CheckExplanation({
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
        localization.checkExplanation(subject),
        style: const TextStyle(
          fontSize: 15,
        ),
        textAlign: TextAlign.start,
      ),
    );
  }
}
