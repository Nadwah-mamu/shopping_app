import 'package:get/get.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:shopping_app/Views/otpscreen.dart';

class AuthController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  // Rx<User?> user = Rx<User?>(null);
  // RxString verificationId = ''.obs;

  @override
  // void onInit() {
  //   super.onInit();
  //   _auth.authStateChanges().listen((User? newUser) {
  //     user.value = newUser;
  //   });
  // }

  Future<void> signInWithPhoneNumber(String phoneNumber) async {
    try {
      await _auth.verifyPhoneNumber(timeout: Duration(seconds: 120),
        phoneNumber: phoneNumber,
        verificationCompleted: (PhoneAuthCredential credential) async {

          await _auth.signInWithCredential(credential);
        },
        verificationFailed: (error) {
          print("ERROR:${error.message}");
        },
        codeSent: (verificationId, int? resendToken) {
          Get.to(() => OtpScreen(
                verificationId: verificationId,
              ));
        },
        codeAutoRetrievalTimeout: (verificationId) {
          // Handle code auto-retrieval timeout
        },

      );
    } on FirebaseAuthException catch (error) {
      print("error:${error.message.toString()}");
      Get.showSnackbar(GetSnackBar(
        title: error.message.toString(),
      ));
    }
  }

  Future<void> signInWithCode(String verificationId,String userOtp) async {
    try {
      AuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationId,
        smsCode: userOtp,
      );
      User? user=(
      await _auth.signInWithCredential(credential)).user;
      if(user!=null){

      }
    }on FirebaseAuthException catch (e) {
      print('Error: $e');
    }
  }

  Future<void> signOut() async {
    await _auth.signOut();
  }
}
