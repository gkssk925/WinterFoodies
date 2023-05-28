import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:winter_foodies/config/my_colors.dart';
import 'package:winter_foodies/constants/build_context_extensions.dart';
import 'package:winter_foodies/constants/strings.dart';

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
        // leading: IconButton(
        //     onPressed: () {
        //       Navigator.of(context).pop();
        //     },
        //     icon: Icon(Icons.arrow_back_ios)),
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
              Text('환경설정'),
              Text('공지사항'),
              Text('현재 버전 1.0.1'),
            ],
          )),
    );
  }
}
