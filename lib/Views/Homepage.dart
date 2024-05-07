import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marquee/marquee.dart';
import 'package:shopping_app/Model/StreamBuilder.dart';
import 'package:shopping_app/Utils/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child:
           Column(
             mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 30,
                width: MediaQuery.of(context).size.width,
                color: maroonColor,
                child: Marquee(
                  blankSpace: 150,
                  text:
                      '*Buy 1 @ 20%* | Buy 2 @ 30% | Buy 3 @ 50%....Get Yours Now!!!',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              AppBar(
                actions: [
                  Icon(
                    Icons.search_outlined,
                    size: 30,
                    color: maroonColor,
                  ),
                  sizedBox,
                  Icon(
                    Icons.favorite_outline,
                    size: 30,
                    color: maroonColor,
                  ),
                  sizedBox,
                  IconButton(onPressed:(){
                  },icon:Icon(Icons.shopping_cart_outlined,
                    size: 30,
                    color: maroonColor,)

                  ),
                  sizedBox
                ],
                title: Image.network(
                    height: 130,
                    width: 125,
                    "https://commonherb.files.wordpress.com/2016/02/fabindia-logo.jpg"),
              ),
              SizedBox(height: 100,
                child: ListView.builder(
                  itemCount: menu.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index) {
                    return Row(
                      children: [
                        sizedBox,
                        Column(
                          children: [
                            CircleAvatar(
                              backgroundImage:menu[index] ,
                              radius: 40,

                            ),
                            Text("Men")
                          ],
                        ),
                        sizedBox
                      ],
                    );

                  }
                ),
              ),
              StreamBuilders()
            ],

        ),
      ),
      drawer: Drawer(),
    );
  }
}
