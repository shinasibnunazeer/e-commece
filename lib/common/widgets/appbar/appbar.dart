import 'package:e_commerce/utils/device/device_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EAppbar extends StatelessWidget implements PreferredSizeWidget {
  const EAppbar(
      {super.key,
      this.title,
      this.shoBackarrow = false,
       this.leadingIcon,
      this.actions,
      this.leadingOnPressed});

  final Widget? title;
  final bool shoBackarrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: AppBar(
        //auto lead
        automaticallyImplyLeading: false,
        leading: shoBackarrow ? IconButton(onPressed:()=> Get.back(), icon: const Icon(Icons.arrow_back_ios)):
        leadingIcon != null ?
        IconButton(onPressed:leadingOnPressed, icon:  Icon(leadingIcon)) :null,
        title: title,
        actions:actions
      )
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(DeviceUtils.getAppBarHeight());
}
