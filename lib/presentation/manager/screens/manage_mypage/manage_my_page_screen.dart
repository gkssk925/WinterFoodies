import 'package:flutter/material.dart';
import 'package:winter_foodies/config/my_colors.dart';
import 'package:winter_foodies/constants/build_context_extensions.dart';

class ManageMyPageScreen extends StatefulWidget {
  const ManageMyPageScreen({super.key});

  @override
  State<ManageMyPageScreen> createState() => _ManageMyPageScreenState();
}

class _ManageMyPageScreenState extends State<ManageMyPageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: MyColors.primary,
        appBar: AppBar(
          title: Text(
            'manage_my_page',
            style: context.displayMedium(),
          ),
          backgroundColor: MyColors.primary,
        ),
        body: Container());
  }
}