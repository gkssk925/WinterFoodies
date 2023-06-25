import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:winter_foodies/config/my_colors.dart';
import 'package:winter_foodies/constants/build_context_extensions.dart';
import 'package:winter_foodies/constants/strings.dart';
import 'package:winter_foodies/presentation/customer/screens/login/login_screen.dart';
import 'package:winter_foodies/presentation/customer/screens/mypage/widgets/my_info_screen.dart';
import 'package:winter_foodies/presentation/customer/screens/zzim/zzim_screen.dart';

class MyPageScreen extends StatefulWidget {
  const MyPageScreen({super.key});

  @override
  State<MyPageScreen> createState() => _MyPageScreenState();
}

class _MyPageScreenState extends State<MyPageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: MyColors.primary,
      appBar: AppBar(
        title: Text(
          '마이 페이지',
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
                '류현수님 안녕하세요!',
                style: context.titleMedium(),
              ),
              Flexible(
                child: GridView.count(
                  crossAxisCount: 2, // 열의 개수,
                  //childAspectRatio: 2 / 2,
                  children: List.generate(Strings.myPageMenu.length, (index) {
                    return Center(
                      child: InkWell(
                        onTap: () {
                          if (index == 0) {
                            PersistentNavBarNavigator.pushNewScreen(
                              context,
                              screen: MyInfoScreen(),
                              withNavBar: true,
                              pageTransitionAnimation:
                                  PageTransitionAnimation.cupertino,
                            );
                          } else if (index == 1) {
                            PersistentNavBarNavigator.pushNewScreen(
                              context,
                              screen: ZzimScreen(),
                              withNavBar: true,
                              pageTransitionAnimation:
                                  PageTransitionAnimation.cupertino,
                            );
                          }
                          // PersistentNavBarNavigator.pushNewScreen(
                          //   context,
                          //   screen: StoreListScreen(),
                          //   withNavBar: true,
                          //   pageTransitionAnimation:
                          //       PageTransitionAnimation.cupertino,
                          // );
                        },
                        child: Container(
                          width: 80,
                          height: 80,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: Center(child: Text(Strings.myPageMenu[index])),
                        ),
                      ),
                    );
                  }),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                    color: MyColors.white),
                child: Row(
                  children: [
                    Expanded(child: Text('환경설정')),
                    Icon(Icons.arrow_forward_ios)
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                    color: MyColors.white),
                child: Row(
                  children: [
                    Expanded(child: Text('공지사항')),
                    Icon(Icons.arrow_forward_ios)
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                    color: MyColors.white),
                child: Row(
                  children: [
                    Expanded(child: Text('현재버전 1.0.1')),
                    Icon(Icons.arrow_forward_ios)
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context, rootNavigator: true).push(
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ),
                  );
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                      color: MyColors.white),
                  child: Row(
                    children: [
                      Expanded(child: Text('로그아웃')),
                      Icon(Icons.arrow_forward_ios)
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
