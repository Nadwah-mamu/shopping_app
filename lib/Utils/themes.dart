import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';

ShapeBorder? bottomBarShape = const RoundedRectangleBorder(
  borderRadius: BorderRadius.all(Radius.circular(25)),
);
SnakeBarBehaviour snakeBarStyle = SnakeBarBehaviour.floating;
EdgeInsets padding = const EdgeInsets.all(12);

SnakeShape snakeShape = SnakeShape.rectangle;

Gradient selectedGradient =
const LinearGradient(colors: [Colors.red, Colors.amber]);
Gradient unselectedGradient =
const LinearGradient(colors: [Colors.red, Colors.blueGrey]);
