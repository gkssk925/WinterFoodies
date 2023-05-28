import 'package:flutter/material.dart';
import 'package:winter_foodies/config/my_colors.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return   Container(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 40),
            color:  MyColors.primary,
            child: Text('Cart Screen'));
  }
}