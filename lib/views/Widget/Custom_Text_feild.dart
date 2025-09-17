import 'package:flutter/material.dart';
import 'package:test/views/Widget/Constants.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    this.inputType,
    this.onChanged,
    this.hintText,
    this.maxLiens = 1,
    this.onSaved,
  });
  final String? hintText;
  Function(String)? onChanged;
  final int maxLiens;
  TextInputType? inputType;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Feild is required';
        } else {
          return null;
        }
      },
      onSaved: onSaved,
      cursorColor: kPrimaryColor,
      keyboardType: inputType,
      onChanged: onChanged,
      maxLines: maxLiens,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: kPrimaryColor, fontSize: 14),
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
