import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_app/Model/elevatedbutton.dart';
import 'package:shopping_app/Utils/constants.dart';
import 'package:shopping_app/Views/RegisterPage.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.amber,
                image: DecorationImage(
                    filterQuality: FilterQuality.high,
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHcnr2fQujr6tfCxu2COBCTu8CwG-H03eD-RkwNNoAeQ&s"))),
          ),
          Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Hello!",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                    fontStyle: FontStyle.italic,
                    color: Colors.white),
              ),
              Padding(
                  padding: EdgeInsets.only(left: 18),
                  child: Text(
                    "Login or Register to manage your",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 24),
                  )),
              Text(
                "Orders",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 24),
              ),
              CustomElevatedButton(
                size: Size(200, 40),
                widget: Text(
                  "Login",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w400),
                ),
                onPressed: () {},
                color: maroonColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
              ),
              SizedBox(
                height: 15,
              ),
              CustomElevatedButton(
                size: Size(200, 40),
                widget: Text(
                  "Register",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 25),
                ),
                onPressed: () {Get.to(RegisterPage());},
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Divider(color: Colors.black),
              CustomElevatedButton(
                size: Size(200, 50),
                widget: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.facebook,
                      color: Colors.white,
                      size: 26,
                    ),
                    sizedBox,
                    Text(
                      "Continue with Facebook",
                      style: TextStyle(color: Colors.white, fontSize: 23),
                    )
                  ],
                ),
                onPressed: () {},
                color: Colors.blueAccent.shade700,
                shape: RoundedRectangleBorder(),
              ),
              SizedBox(
                height: 14,
              ),
              CustomElevatedButton(
                size: Size(250, 50),
                widget: Text("Signin with Google",style: TextStyle(color: Colors.white,fontSize: 23),),
                onPressed: () {},
                color: Colors.blueAccent.shade700,
                shape: RoundedRectangleBorder(
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
