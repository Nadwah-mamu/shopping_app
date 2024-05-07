import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/Utils/images.dart';

class CarouselSliders extends StatelessWidget{
  const CarouselSliders({super.key,});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: SafeArea(
        child: CarouselSlider.builder(itemCount: carouselList.length,
          options: CarouselOptions(autoPlay: true,),
           itemBuilder: (BuildContext context, int index, int realIndex) {
          return Image.network(height:120,width:MediaQuery.of(context).size.width,carouselList[index].toString()); },),
      ),
      ),);
 }
}