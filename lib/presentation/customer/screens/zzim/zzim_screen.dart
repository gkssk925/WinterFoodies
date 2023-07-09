import 'package:flutter/material.dart';
import 'package:winter_foodies/config/my_colors.dart';
import 'package:winter_foodies/constants/build_context_extensions.dart';
import 'package:winter_foodies/constants/strings.dart';
import 'package:winter_foodies/presentation/customer/screens/mypage/provider/mypage_provider.dart';
import 'package:provider/provider.dart';

class ZzimScreen extends StatefulWidget {
  const ZzimScreen({super.key});

  @override
  State<ZzimScreen> createState() => _ZzimScreenState();
}

class _ZzimScreenState extends State<ZzimScreen> {
  late MyPageProvider _myPageProvider;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await _myPageProvider.getMyPageZzimList();
    });
  }

  @override
  Widget build(BuildContext context) {
    _myPageProvider = context.watch<MyPageProvider>();

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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '찜',
                style: context.titleLarge(),
              ),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: Strings.storeList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: InkWell(
                        onTap: () {
                          //todo 찜목록에 있는 리스트 누르면 가게 상세 정보로 이동해야하나? 그러면 하단탭도 이동해야겠네..
                        },
                        child: Container(
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6)),
                              color: MyColors.white),
                          child: Center(
                            child: Text(
                              Strings.storeList[index],
                              style: context.titleMedium(),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ));
  }
}
