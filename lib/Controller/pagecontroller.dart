import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageControllers extends GetxController{
  @override
  PageController pageController=PageController();

   RxInt selectedItemPosition = 0.obs;
  void screenChange(int page){
    selectedItemPosition.value=page;
    pageController.jumpToPage(page);

 }

}
