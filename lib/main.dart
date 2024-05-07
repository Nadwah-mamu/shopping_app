import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:shopping_app/Bindings/samplebinding.dart';
import 'package:shopping_app/Views/Mainview.dart';

import 'Model/carousel slider.dart';
import 'Views/Homepage.dart';
import 'Views/phoneauth.dart';
import 'Views/shoppingcart.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );await FirebaseAppCheck.instance.activate(
    // You can also use a `ReCaptchaEnterpriseProvider` provider instance as an
    // argument for `webProvider`
    androidProvider: AndroidProvider.debug,

    // Default provider for iOS/macOS is the Device Check provider. You can use the "AppleProvider" enum to choose
    // your preferred provider. Choose from:
    // 1. Debug provider
    // 2. Device Check provider
    // 3. App Attest provider
    // 4. App Attest provider with fallback to Device Check provider (App Attest provider is only available on iOS 14.0+, macOS 14.0+)
    // appleProvider: AppleProvider.appAttest,
  );
 await FirebaseAppCheck.instance.getToken(true);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      color: Colors.white38,
      home: PhoneAuth(),
      // initialRoute: '/mainPage',
      // initialBinding: SampleBindings(),
      // getPages: [
      //   GetPage(
      //     name: '/mainPage',
      //     page: () => MainView(),
      //   ),
      //   GetPage(
      //     name: '/cart',
      //     page: () => ShoppingCart(),
      //   ),
      //   GetPage(
      //     name: '/home',
      //     page: () => HomePage(),
      //   )
      // ],
      debugShowCheckedModeBanner: false,
    );
  }
}
