


import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/products/cart/cart_couter_icon.dart';
import 'package:flutter/material.dart';

class EHomeAppBar extends StatelessWidget {
  const EHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return EAppbar(
      actions: [
        ECartCounterIcon(
          onPressed: (){},
          iconColor: Colors.white,
        )
      ],
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Welcome to shopify",style: Theme.of(context).textTheme.labelMedium!.apply(color: Colors.grey), ),
              Text("Shinas Nazeer",style: Theme.of(context).textTheme.headlineSmall!.apply(color: Colors.white), ),
              
        ],
      ),
    
    );
  }
}
