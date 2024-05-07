
import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:get/get.dart';
import 'package:shopping_app/Controller/pagecontroller.dart';

import '../Utils/themes.dart';
class SnakeNavigation extends GetView<PageControllers>{
  const SnakeNavigation({super.key});


  @override
  Widget build(BuildContext context) {
    controller;
    return  Obx(()=>SnakeNavigationBar.gradient(
        behaviour: snakeBarStyle,
        snakeShape: snakeShape,
        shape: bottomBarShape,
        padding: padding,

        ///configuration for SnakeNavigationBar.gradient
        snakeViewGradient: selectedGradient,
        selectedItemGradient: selectedGradient,
        unselectedItemGradient: unselectedGradient,

        currentIndex: controller.selectedItemPosition.value,
        onTap:(page) {
          controller.screenChange(page);
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.category_outlined), label: 'Categories'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box_outlined), label: 'Account')
        ],
        selectedLabelStyle: const TextStyle(fontSize: 18),
        unselectedLabelStyle: const TextStyle(fontSize: 15),
        showSelectedLabels: true,
        showUnselectedLabels: true,
      ),
    );

  }

}

