import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_app/Controller/pagecontroller.dart';
import 'package:shopping_app/Views/Categories.dart';
import 'package:shopping_app/Views/Homepage.dart';
import 'package:shopping_app/Views/account.dart';

class PageView1 extends GetView<PageControllers> {
  PageView1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    controller;
    return PageView(
      controller: controller.pageController,
      onPageChanged: (page) => controller.screenChange(page),
      allowImplicitScrolling: true,
      scrollDirection: Axis.horizontal,
      children: [HomePage(), Categories(), AccountPage()],
    );
  }
}
