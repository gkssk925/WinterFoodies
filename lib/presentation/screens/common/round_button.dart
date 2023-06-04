import 'package:flutter/material.dart';
import 'package:winter_foodies/config/my_colors.dart';
import 'package:winter_foodies/constants/build_context_extensions.dart';

class RoundButton extends StatelessWidget {
  final String buttonText;
  final Function onTap;
  const RoundButton({super.key, required this.buttonText, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(6)),
            color: MyColors.white),
        child: Text(
          buttonText,
          style: context.titleMedium(),
        ),
      ),
    );
  }
}
