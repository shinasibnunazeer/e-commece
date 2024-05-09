



import 'package:e_commerce/utils/device/device_utils.dart';
import 'package:flutter/material.dart';

class VerticalImageText extends StatelessWidget {
  const VerticalImageText({
    super.key,
    required this.icon,
    required this.text,
    this.textColor = Colors.white,
    this.backgroundColor,
    this.onPressed,
  });
//icon
  final IconData icon;
//text
  final String text;

  final Color textColor;

//bg color
  final Color? backgroundColor;

//onpressed
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    //is dark
    bool isDark = DeviceUtils.darkMode(context);
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.only(right: 16.0),
        child: Column(
          children: [
            Container(
              width: 56,
              height: 56,
              padding:  EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: backgroundColor ?? (isDark ? Colors.black : Colors.white),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Icon(
                icon,
                color: isDark ? Colors.white : Colors.black,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            SizedBox(
              width: 55,
              child: Text(
                text,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .apply(color: textColor),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ),
    );
  }
}
