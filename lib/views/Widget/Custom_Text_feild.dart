import 'package:flutter/material.dart';
import 'package:test/views/Widget/Constants.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    this.inputType,
    this.onChanged,
    this.hintText,
    this.maxLiens = 1,
  });
  final String? hintText;
  Function(String)? onChanged;
  final int maxLiens;
  TextInputType? inputType;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: KPrimaryColor,
      keyboardType: inputType,
      onChanged: onChanged,
      maxLines: maxLiens,
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
