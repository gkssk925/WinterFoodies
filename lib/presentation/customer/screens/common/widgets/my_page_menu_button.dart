import 'package:flutter/material.dart';
import 'package:winter_foodies/config/my_colors.dart';
import 'package:winter_foodies/constants/build_context_extensions.dart';

class MyPageMenuButton extends StatelessWidget {
  final String buttonText;
  final Function onTap;
  const MyPageMenuButton(
      {super.key, required this.buttonText, required this.onTap});

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
        child: Row(
          children: [
            Expanded(
                child: Text(
              buttonText,
              style: context.titleLarge(),
            )),
            Icon(Icons.arrow_forward_ios)
          ],
        ),
      ),
    );
  }
}
