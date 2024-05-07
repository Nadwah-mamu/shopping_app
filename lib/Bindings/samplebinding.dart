import 'package:get/get.dart';

import '../Controller/Cartcontroller.dart';
import '../Controller/loginController.dart';
import '../Controller/pagecontroller.dart';

class SampleBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => PageControllers());

    Get.lazyPut(() => CartController());
    Get.lazyPut(() => AuthController());


    // TODO: implement dependencies
  }

}