import 'package:flutter/material.dart';
import 'package:winter_foodies/config/my_colors.dart';
import 'package:winter_foodies/constants/build_context_extensions.dart';
import 'package:winter_foodies/constants/strings.dart';

class StoreDetailMenu extends StatefulWidget {
  const StoreDetailMenu({super.key});

  @override
  State<StoreDetailMenu> createState() => _StoreDetailMenuState();
}

class _StoreDetailMenuState extends State<StoreDetailMenu> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: Strings.menuList.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: InkWell(
            onTap: () {
              // Navigator.of(context).pushNamed('/storeDetail');
            },
            child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                    color: MyColors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      Strings.menuList[index],
                      style: context.titleLarge(),
                    ),
                    Icon(Icons.shopping_cart)
                  ],
                )),
          ),
        );
      },
    );
  }
}
