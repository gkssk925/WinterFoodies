import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:winter_foodies/config/my_colors.dart';
import 'package:winter_foodies/constants/build_context_extensions.dart';
import 'package:winter_foodies/constants/strings.dart';
import 'package:winter_foodies/presentation/customer/screens/cart/widgets/order_screen.dart';
import 'package:winter_foodies/presentation/customer/screens/common/widgets/round_button.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: MyColors.primary,
        appBar: AppBar(
          title: Text(
            '장바구니',
            style: context.displayMedium(),
          ),
          backgroundColor: MyColors.primary,
        ),
        body: Container(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 40),
            color: MyColors.primary,
            child: Column(
              children: [
                Text(
                  '신천붕어빵',
                  style: context.titleLarge(),
                ),
                SizedBox(
                  height: 20,
                ),
                Flexible(
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: Strings.cartList.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: InkWell(
                          onTap: () {
                            // Navigator.of(context).pushNamed('/storeDetail');
                          },
                          child: Container(
                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6)),
                                color: MyColors.white),
                            child: Center(
                              child: Text(
                                Strings.cartList[index],
                                style: context.titleMedium(),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                      color: MyColors.white),
                  child: Center(
                    child: Text(
                      '총 주문금액 6000원',
                      style: context.titleMedium(),
                    ),
                  ),
                ),
                Spacer(),
                RoundButton(
                    buttonText: '6000원 주문하기',
                    onTap: () {
                      PersistentNavBarNavigator.pushNewScreen(
                        context,
                        screen: OrderScreen(),
                        withNavBar: true,
                        pageTransitionAnimation:
                            PageTransitionAnimation.cupertino,
                      );
                    })
              ],
            )));
  }
}
