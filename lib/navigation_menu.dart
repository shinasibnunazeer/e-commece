

import 'package:e_commerce/features/shop/screens/home/home.dart';
import 'package:e_commerce/utils/device/device_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final NavigationController navigationController = Get.put(NavigationController());
    final bool darkMode = DeviceUtils.darkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        ()=> NavigationBar(
          elevation: 0,
          height: 80,
          backgroundColor: darkMode ? Colors.black : Colors.white,
          indicatorColor:  darkMode ? Colors.white.withOpacity(0.1) : Colors.black.withOpacity(0.1),
          selectedIndex: navigationController.currentIndex.value,
          onDestinationSelected:navigationController.updateIndex,
          destinations: const [
            //4 containers
            NavigationDestination(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            NavigationDestination(
              icon:  Icon(Icons.storefront) ,
              label: "Store",
            ),
            NavigationDestination(
              icon: Icon(Icons.favorite),
              label: "Favourite",
            ),
            NavigationDestination(
              icon: Icon(Icons.person),
              label: "Profile",
            ),
          ],
        ),
      ),
    body: Obx(
      ()=> navigationController.pages[navigationController.currentIndex.value],
    ),
    );
  }
}


class NavigationController extends GetxController{
  static NavigationController get instance => Get.find();

  final  currentIndex = 0.obs;

  //update
  void updateIndex(index) => currentIndex.value = index;

  //4 containers
  final List<Widget> pages = [
    const HomeScreen(),
    Container(color: Colors.green),
    Container(color: Colors.blue),
    Container(color: Colors.yellow),
  ];


  }