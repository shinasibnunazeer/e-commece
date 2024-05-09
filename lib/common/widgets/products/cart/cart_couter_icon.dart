



import 'package:flutter/material.dart';

class ECartCounterIcon extends StatelessWidget {
  const ECartCounterIcon({
    super.key,
   required this.onPressed,
    this.iconColor,
  });
 
 //void call back
 final VoidCallback onPressed;
 final Color? iconColor;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(onPressed: onPressed, icon:  Icon(Icons.storefront_sharp, color: iconColor,)),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.5),
              shape: BoxShape.circle,
          
            ),
            child: Text("2",style: Theme.of(context).textTheme.labelMedium!.apply(color: Colors.white),textAlign: TextAlign.center,),
          ),
        )
      ],
    );
  }
}
