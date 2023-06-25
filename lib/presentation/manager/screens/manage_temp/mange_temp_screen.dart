import 'package:flutter/material.dart';
import 'package:winter_foodies/config/my_colors.dart';
import 'package:winter_foodies/constants/build_context_extensions.dart';

class ManageTempScreen extends StatefulWidget {
  const ManageTempScreen({super.key});

  @override
  State<ManageTempScreen> createState() => _ManageTempScreenState();
}

class _ManageTempScreenState extends State<ManageTempScreen> {
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
