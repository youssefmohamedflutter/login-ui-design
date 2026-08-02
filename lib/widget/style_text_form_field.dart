import 'package:flutter/material.dart';

class StyleTextFormField extends StatelessWidget {
  const StyleTextFormField({
    super.key,
    required this.keyboardType,
    required this.controller,
    required this.onFilledSubmitted,
    required this.onChanged,
    required this.isPassword,
    required this.prefixIcon,
    this.suffixIcon,
    required this.labelTex,
  });
  final TextInputType keyboardType;
  final TextEditingController controller;
  final ValueChanged onFilledSubmitted;
  final ValueChanged onChanged;
  final bool isPassword;
  final IconData prefixIcon;
  final IconData? suffixIcon;
  final String labelTex;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isPassword,
      keyboardType: keyboardType,
      controller: controller,
      onFieldSubmitted: onFilledSubmitted,
      onChanged: onChanged,
      onTapOutside: (PointerDownEvent event) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      autocorrect: true,
      enableSuggestions: true,
      textCapitalization: TextCapitalization.words,
      style: TextStyle(color: Colors.black),
      decoration: InputDecoration(
        prefixIcon: Icon(prefixIcon),
        suffixIcon: Icon(suffixIcon),
        labelText: labelTex,
        border: OutlineInputBorder(),
      ),
    );
  }
}
