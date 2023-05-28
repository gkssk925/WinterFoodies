import 'package:flutter/material.dart';
import 'package:winter_foodies/config/my_colors.dart';
import 'package:winter_foodies/constants/build_context_extensions.dart';

class MyPageScreen extends StatefulWidget {
  const MyPageScreen({super.key});

  @override
  State<MyPageScreen> createState() => _MyPageScreenState();
}

class _MyPageScreenState extends State<MyPageScreen> {
  @override
  Widget build(BuildContext context) {
    return  Container(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 40),
            color:  MyColors.primary,
            child: Text('MyPage Screen'));  }
}
