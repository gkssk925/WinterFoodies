import 'package:flutter/material.dart';
import 'package:winter_foodies/config/my_colors.dart';

class CommonTextField extends StatefulWidget {
  final TextEditingController textEditingController;
  final String hintText;
  final String validCheckMessage;

  const CommonTextField(
      {super.key,
      required this.textEditingController,
      required this.hintText,
      required this.validCheckMessage});

  @override
  State<CommonTextField> createState() => _CommonTextFieldState();
}

class _CommonTextFieldState extends State<CommonTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.textEditingController,
      decoration: InputDecoration(
          hintText: widget.hintText,
          fillColor: MyColors.white,
          filled: true,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(6),
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 10)),
      validator: (value) {
        if (value != null && value.isEmpty) {
          return widget.validCheckMessage;
        }
        return null;
      },
    );
  }
}
