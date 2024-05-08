

import 'package:e_commerce/utils/const/image_strings.dart';
import 'package:flutter/material.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      //decoration circular
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.grey,
    
    
    
        ),
      ),
      child: IconButton(
        onPressed: () {},
        icon: Image.asset(EImageString.goole,
        width: 24,
        height:  24,
        ),
      ),
    );
  }
}
