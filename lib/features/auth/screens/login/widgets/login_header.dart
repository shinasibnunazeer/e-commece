


import 'package:e_commerce/utils/const/image_strings.dart';
import 'package:flutter/material.dart';


class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(height: 150, EImageString.appLogo),
        Text(
          "Welcome back!",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        //lorem
        Text(
          "Lorem ipsum dolor sit amet, consectetur adipiscing t labore et dolore magna aliqua.",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
