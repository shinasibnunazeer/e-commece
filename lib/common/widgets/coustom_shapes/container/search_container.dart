


import 'package:e_commerce/utils/device/device_utils.dart';
import 'package:flutter/material.dart';

class ESerachContainer extends StatelessWidget {
  const ESerachContainer({
    super.key, required this.text, this.icon, required this.showBackground, required this.showBorder,
  });

final String text;
final IconData? icon;
final bool showBackground, showBorder;


  @override
  Widget build(BuildContext context) {
   bool isDark  = DeviceUtils.darkMode(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
    
      child: Container(
       
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        //box decoration
        decoration: BoxDecoration(
          color: showBackground ? isDark ? Colors.black : Colors.white : Colors.transparent,
          borderRadius: BorderRadius.circular(16),
          border: showBorder ? Border.all(color: Colors.grey) : null
        ),
       child: Row(
         children: [
           Icon(icon, color: Colors.grey,),
           const SizedBox(width: 16,),
          Text(
            text,
            style: Theme.of(context).textTheme.bodySmall
    
          )
         ],
       ),
      ),
    );
  }
}
