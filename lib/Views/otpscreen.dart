
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import 'package:shopping_app/Controller/loginController.dart';

import '../Model/elevatedbutton.dart';

class OtpScreen extends StatelessWidget {
  String verificationId;
  OtpScreen({Key? key, required this.verificationId})
      : super(
          key: key,
        );
  String userOtp="";

  @override
  Widget build(BuildContext context) {
   AuthController controller= Get.find();
    return Scaffold(
      appBar: AppBar(leading: IconButton(onPressed:(){
        Navigator.pop(context);
      },icon:Icon(Icons.arrow_back)),),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25,horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Verification",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 27),
              ),
              SizedBox(
                height: 10,
              ),
              const Text(
                "Enter the OTP send to your number ",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.black38,
                    fontSize: 18),
              ),
              SizedBox(
                height: 20,
              ),
               Pinput(length: 6,
                keyboardType: TextInputType.number,
                showCursor: true,
                defaultPinTheme: PinTheme(width: 80,
                    height: 60,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                        border:  Border.all(color: Colors.purple.shade200))),
              ),            SizedBox(
                height: 30,
              ),
              CustomElevatedButton(
                  onPressed: () {
                    // if(userOtp!=null){
                      controller.signInWithCode(verificationId, userOtp);

                    // }
                    // else{
                    //   Get.showSnackbar(GetSnackBar(messageText:Text("Enter 6 digit code") ,));
                    // }
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  color: Colors.purple,
                  widget: const Text(
                    "Verify",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                        fontSize: 25),
                  ),
                  size: Size(MediaQuery.of(context).size.width, 50))

            ],
          ),
        ),
      ),
    );
  }
}
