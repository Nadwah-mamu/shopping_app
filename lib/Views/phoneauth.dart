import 'package:country_picker/country_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_app/Controller/loginController.dart';
import 'package:shopping_app/Controller/texteditingcontroller.dart';
import 'package:shopping_app/Model/elevatedbutton.dart';

class PhoneAuth extends StatefulWidget {
  const PhoneAuth({Key? key}) : super(key: key);

  @override
  State<PhoneAuth> createState() => _PhoneAuthState();
}

class _PhoneAuthState extends State<PhoneAuth> {
  Country country = Country(
      phoneCode: "91",
      countryCode: "IN",
      e164Sc: 0,
      geographic: true,
      level: 1,
      name: "India",
      example: "India",
      displayName: "India",
      displayNameNoCountryCode: "IN",
      e164Key: "");
  OutlineInputBorder border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide(color: Colors.black12));
  @override
  Widget build(BuildContext context) {
    AuthController controller=Get.put(AuthController());
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric( horizontal:30),
        child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Register",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 27),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Add your phone Number. We'll send you a verification code",
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Colors.black38,
                  fontSize: 18),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: mobileNumber,
              style: TextStyle(fontWeight: FontWeight.bold,fontSize:20),
              keyboardType: TextInputType.number,
              onChanged: (value) => setState(() {
                mobileNumber.text = value;
              }),
              decoration: InputDecoration(
                  prefixIcon: Container(
                    padding: EdgeInsets.all(8),
                    child: InkWell(
                      onTap: () {
                        showCountryPicker(
                            context: context,
                            countryListTheme: CountryListThemeData(
                                bottomSheetHeight: 550,
                                borderRadius: BorderRadius.circular(20)),
                            onSelect: (value) => setState(() {
                                  country = value;
                                }));
                      },
                      child: Text(
                        "${country.flagEmoji} + ${country.phoneCode}",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  suffixIcon: mobileNumber.text.length > 9
                      ? Container(
                          height: 30,
                          width: 30,
                          margin: EdgeInsets.all(8),
                          child: Icon(
                            Icons.done,
                            color: Colors.white,
                            size: 20,
                          ),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.green),
                        )
                      : null,
                  hintText: "Enter Phone Number",
                  hintStyle: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                  enabledBorder: border,
                  focusedBorder: border),
            ),
            SizedBox(
              height: 30,
            ),
            CustomElevatedButton(
                onPressed: () {
                  controller.signInWithPhoneNumber("+${country.phoneCode}${mobileNumber.text.trim()}");
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: Colors.purple,
                widget: const Text(
                  "Login",
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                      fontSize: 25),
                ),
                size: Size(MediaQuery.of(context).size.width, 50))
          ],
        ),
      ),
    );
  }
}
