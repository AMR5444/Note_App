import 'package:flutter/material.dart';
import 'package:test/views/Widget/Constants.dart';
import 'package:test/views/Widget/Custom_Serch_Icon.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    Key? key,
    this.inputType,
    this.onChanged,
    this.hintText,
    this.obscureText = false,
  }) : super(key: key);
  final String? hintText;
  Function(String)? onChanged;
  final bool? obscureText;

  TextInputType? inputType;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: KPrimaryColor,
      obscureText: obscureText!,
      keyboardType: inputType,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: KPrimaryColor, fontSize: 14),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(8),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(),
        ),
      ),
    );
  }
}
