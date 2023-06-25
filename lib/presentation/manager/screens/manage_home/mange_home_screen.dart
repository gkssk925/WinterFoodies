import 'package:flutter/material.dart';
import 'package:winter_foodies/config/my_colors.dart';
import 'package:winter_foodies/constants/build_context_extensions.dart';

class ManageHomeScreen extends StatefulWidget {
  const ManageHomeScreen({super.key});

  @override
  State<ManageHomeScreen> createState() => _ManageHomeScreenState();
}

class _ManageHomeScreenState extends State<ManageHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: MyColors.primary,
        appBar: AppBar(
          title: Text(
            'manage_home',
            style: context.displayMedium(),
          ),
          backgroundColor: MyColors.primary,
        ),
        body: Container());
  }
}
