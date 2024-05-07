import 'package:flutter/material.dart';
import 'package:shopping_app/Utils/constants.dart';

class TextFields extends StatelessWidget {
  final String? labelText;
  final TextEditingController? controller;
  final void Function(String)? onChanged;
    String? initialValue = " ";
  final TextInputType? keyboardType;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  bool? enabled;

  TextFields(
      {this.enabled,
      this.controller,
      this.labelText,
      this.onChanged,
      this.keyboardType,
      this.prefixIcon,
      this.suffixIcon,
      this.initialValue});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10),
      child: TextFormField(
        validator: (value) {
          if (value!.isEmpty) {
            return "*mandatory field";
          }
        },
        controller: controller,
        enabled: enabled,
        onChanged: onChanged,
        initialValue: initialValue,
        cursorColor: maroonColor,
        keyboardType: keyboardType,
        decoration: InputDecoration(
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            labelText: labelText,
            labelStyle: TextStyle(fontSize: 20, color: maroonColor)),
      ),
    );
  }
}
