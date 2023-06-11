import 'package:flutter/material.dart';
import 'package:winter_foodies/config/my_colors.dart';
import 'package:winter_foodies/constants/build_context_extensions.dart';

class SubmitButton extends StatefulWidget {
  final String btnText;
  final Function onTapCallback;
  const SubmitButton({super.key, required this.btnText, required this.onTapCallback});

  @override
  State<SubmitButton> createState() => _SubmitButtonState();
}

class _SubmitButtonState extends State<SubmitButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.onTapCallback();
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
            color: MyColors.white),
        child: Center(
            child: Text(
          widget.btnText,
          maxLines: 1,
          style: context.titleMedium(),
        )),
      ),
    );
  }
}
