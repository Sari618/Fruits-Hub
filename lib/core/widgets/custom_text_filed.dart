import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utlis/app_style_text.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key, required this.hintText, required this.textInputType,  this.suffixicon});
  final String hintText;
  final TextInputType textInputType;
  final Widget? suffixicon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: textInputType,
      decoration: InputDecoration(
        suffixIcon: suffixicon,
        hintText: hintText,
        hintStyle: TextStyles.bold13.copyWith(color: const Color(0xFF949D9E)),
        filled: true,
        fillColor: const Color(0xFFF9FAFA),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
      ),
    );
  }
  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: const BorderSide(
        width: 1,
        color: Color(0xFFE6E9E9),
      ),
    );
  }
}
