


import 'package:flutter/material.dart';

class FormDivider extends StatelessWidget {
  const FormDivider({
    super.key, required this.text,
  });
final String text;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        const Expanded(
          child: Divider(),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(text),
        ),
        const Expanded(
          child: Divider(),
        ),
      ],
    );
  }
}

