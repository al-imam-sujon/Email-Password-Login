import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomFormTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final String? levelText;
  final TextInputType? keyboardType;
  final bool obscureText;
  final String? obscuringCharacter;
  final Widget? prefixicon;
  final Widget? sufixicon;
  final int? maxlength;
  final TextInputAction? textInputAction;
  final bool autofocus;
  final String? Function(String?)? validator;
  final String? Function(String?)? onSaved;

  const CustomFormTextField(
      {Key? key,
      this.controller,
      this.hintText,
      this.levelText,
      this.keyboardType,
      this.obscureText = false,
      this.prefixicon,
      this.sufixicon,
      this.maxlength,
      this.textInputAction,
      this.autofocus = false,
      this.validator,
      this.onSaved,
      this.obscuringCharacter})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      keyboardType: keyboardType,
      controller: controller,
      maxLength: maxlength,
      textInputAction: textInputAction,
      onSaved: onSaved,
      validator: validator,
      obscureText: obscureText,
      obscuringCharacter: '*',
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          gapPadding: 5,
          borderSide: BorderSide(color: Color(0xfff15454)),
        ),
        prefixIcon: prefixicon,
        suffixIcon: sufixicon,
        hintText: hintText,
        labelText: levelText,
      ),
    );
  }
}
