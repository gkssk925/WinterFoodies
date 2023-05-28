import 'package:flutter/material.dart';
import 'package:winter_foodies/config/my_colors.dart';
import 'package:winter_foodies/constants/build_context_extensions.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 40),
            color:  MyColors.primary,
            child: Text('Category Screen'));
  }
}
