import 'package:flutter/material.dart';
import 'package:winter_foodies/config/my_colors.dart';
import 'package:winter_foodies/constants/build_context_extensions.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: MyColors.primary,
        appBar: AppBar(
          title: Text(
            '주문완료',
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
                  '주문내역',
                  style: context.titleLarge(),
                ),
                Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: MyColors.white,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text('어묵'),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: Text(
                                '4개 2000원',
                                maxLines: 5,
                                overflow: TextOverflow.ellipsis,
                              ),
                            )
                          ],
                        ),
                        Divider(
                          color: MyColors.black,
                        ),
                        Row(
                          children: [
                            Text('붕어빵'),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: Text(
                                '4개 2000원',
                                maxLines: 5,
                                overflow: TextOverflow.ellipsis,
                              ),
                            )
                          ],
                        ),
                        Divider(
                          color: MyColors.black,
                        ),
                        Row(
                          children: [
                            Text('튀김'),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: Text(
                                '2000원',
                                maxLines: 5,
                                overflow: TextOverflow.ellipsis,
                              ),
                            )
                          ],
                        ),
                      ],
                    )),
                Spacer(),
                Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                      color: MyColors.white),
                  child: Center(
                    child: Column(
                      children: [
                        Text(
                          '총 주문금액 6000원',
                          style: context.titleMedium(),
                        ),
                        Text(
                          '조리 예상 시간은 10~20분 입니다',
                          style: context.titleMedium(),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )));
  }
}
