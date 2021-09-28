import 'package:flutter/material.dart';

class CheckBoxCard extends StatelessWidget {
  const CheckBoxCard({
    Key? key,
    required this.title,
    required this.onTap,
    required this.onDelete,
    required this.isSelected,
  }) : super(key: key);

  final String title;
  final Function(bool?)? onTap;
  final Function() onDelete;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: CheckboxListTile(
        value: isSelected,
        onChanged: onTap,
        title: Text(title),
        controlAffinity: ListTileControlAffinity.leading,
        secondary: IconButton(
          icon: const Icon(Icons.delete),
          onPressed: onDelete,
        ),
      ),
    );
  }
}
