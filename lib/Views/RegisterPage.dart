import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:shopping_app/Controller/loginController.dart';
import 'package:shopping_app/Controller/texteditingcontroller.dart';
import 'package:shopping_app/Model/elevatedbutton.dart';
import 'package:shopping_app/Model/textfield.dart';
import 'package:shopping_app/Utils/constants.dart';

class RegisterPage extends GetView<AuthController> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 3,
        title: Text(
          "Register",
          style: TextStyle(fontStyle: FontStyle.italic, color: maroonColor),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextFields(
                prefixIcon: Icon(Icons.person),
                controller: firstName,
                labelText: "First Name",
              ),
              TextFields(
                prefixIcon: Icon(Icons.person),
                controller: lastName,
                labelText: "Last Name",
              ),
              TextFields(
                controller: email,
                labelText: "Email",
                keyboardType: TextInputType.emailAddress,
                prefixIcon: Icon(
                  Icons.alternate_email_outlined,
                ),
              ),
              TextFields(
                controller: password,
                labelText: "Password",
                prefixIcon: Icon(Icons.account_box_outlined),
                keyboardType: TextInputType.visiblePassword,
              ),
              TextFields(
                prefixIcon: Icon(Icons.account_box_outlined),
                controller: confirmPassword,
                labelText: "Confirm password",
                keyboardType: TextInputType.visiblePassword,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text("Date of Birth"),
                  ],
                ),
              ),
              TextFields(onChanged: (value){
              },
                controller: dateOfBirth,
                enabled: false,

                suffixIcon: IconButton(
                  onPressed: (){},
                  icon: Icon(
                    Icons.date_range_outlined,
                    color: maroonColor,
                  ),
                ),
              ),

              CustomElevatedButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  color: maroonColor,
                  widget: Text(
                    "Register",
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                  size: Size(299, 50))

            ],
          ),
        ),
      ),
    );
  }
}
