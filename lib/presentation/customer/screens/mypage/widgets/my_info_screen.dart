import 'package:flutter/material.dart';
import 'package:winter_foodies/config/my_colors.dart';
import 'package:winter_foodies/constants/build_context_extensions.dart';
import 'package:winter_foodies/presentation/customer/screens/common/widgets/round_button.dart';
import 'package:winter_foodies/presentation/customer/screens/mypage/provider/mypage_provider.dart';
import 'package:provider/provider.dart';

class MyInfoScreen extends StatefulWidget {
  const MyInfoScreen({super.key});

  @override
  State<MyInfoScreen> createState() => _MyInfoScreenState();
}

class _MyInfoScreenState extends State<MyInfoScreen> {
  late MyPageProvider _myPageProvider;
  final TextEditingController _changePwdController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await _myPageProvider.getMyPageInfo();
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
                '내 정보',
                style: context.headlineSmall(),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '아이디',
                    style: context.titleLarge(),
                  ),
                  Text(_myPageProvider.myPageInfo.email)
                ],
              ),
              Divider(
                thickness: 1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '닉네임',
                    style: context.titleLarge(),
                  ),
                  Text(_myPageProvider.myPageInfo.username)
                ],
              ),
              Divider(
                thickness: 1,
              ),
              Text(
                '비밀번호 변경',
                style: context.titleLarge(),
              ),
              SizedBox(
                height: 10,
              ),
              Form(
                  key: _formKey,
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: _changePwdController,
                          decoration: InputDecoration(
                            hintText: '변경할 비밀번호',
                            fillColor: MyColors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          validator: (value) {
                            if (value != null && value.isEmpty) {
                              return '변경할 비밀번호를 입력해주세요';
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            if (_formKey.currentState!.validate()) {
                              //비번 변경 진행
                            }
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6)),
                              color: MyColors.white),
                          child: Text(
                            '변경',
                            style: context.titleLarge(),
                          ),
                        ),
                      )
                    ],
                  ))
            ],
          ),
        ));
  }
}
