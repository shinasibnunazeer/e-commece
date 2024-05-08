


import 'package:flutter/material.dart';

class OrWidget extends StatelessWidget {
  const OrWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: Divider(),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text("or"),
        ),
        Expanded(
          child: Divider(),
        ),
      ],
    );
  }
}

