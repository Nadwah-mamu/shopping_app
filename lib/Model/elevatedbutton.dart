import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final Widget widget;
  final VoidCallback? onPressed;
  final OutlinedBorder shape;
  final Color color;
  final Size size;

  const CustomElevatedButton(
      {super.key, required this.onPressed, required this.shape, required this.color, required this.widget, required this.size});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
          shape: MaterialStatePropertyAll<OutlinedBorder>(shape),
          minimumSize: MaterialStatePropertyAll<Size>(size),
          backgroundColor: MaterialStatePropertyAll<Color>(color)),
      child: widget,
    );
  }
}
