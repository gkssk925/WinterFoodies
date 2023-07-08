import 'package:flutter/material.dart';
import 'package:winter_foodies/config/my_colors.dart';
import 'package:winter_foodies/constants/build_context_extensions.dart';
import 'package:winter_foodies/presentation/customer/screens/common/widgets/my_page_menu_button.dart';
import 'package:winter_foodies/presentation/customer/screens/common/widgets/round_button.dart';
import 'package:winter_foodies/presentation/customer/screens/login/login_screen.dart';

class ManageMyPageScreen extends StatefulWidget {
  const ManageMyPageScreen({super.key});

  @override
  State<ManageMyPageScreen> createState() => _ManageMyPageScreenState();
}

class _ManageMyPageScreenState extends State<ManageMyPageScreen> {
  final TextEditingController _changePwdController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Text(
                    '내 정보',
                    style: context.titleLarge(),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text('아이디'), Text('gkssk925')],
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  Form(
                    key: _formKey,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('비밀번호 변경'),
                        Row(
                          children: [
                            SizedBox(
                              width: context.width / 2,
                              child: TextFormField(
                                controller: _changePwdController,
                                decoration: const InputDecoration(
                                  hintText: '변경할 비밀번호',
                                  fillColor: MyColors.white,
                                  filled: true,
                                ),
                                validator: (value) {
                                  if (value != null && value.isEmpty) {
                                    return '변경할 비밀번호를 입력해주세요';
                                  }
                                  return null;
                                },
                              ),
                            ),
                            InkWell(
                                onTap: () {
                                  setState(() {
                                    if (_formKey.currentState!.validate()) {
                                      //비번 변경 진행
                                    }
                                  });
                                },
                                child: RoundButton(
                                    buttonText: '변경', onTap: () {})),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  MyPageMenuButton(buttonText: '환경설정', onTap: () {}),
                  SizedBox(
                    height: 10,
                  ),
                  MyPageMenuButton(buttonText: '공지사항', onTap: () {}),
                  SizedBox(
                    height: 10,
                  ),
                  MyPageMenuButton(buttonText: '현재 버전 1.0.1', onTap: () {}),
                  SizedBox(
                    height: 10,
                  ),
                  MyPageMenuButton(
                      buttonText: '로그아웃',
                      onTap: () {
                        Navigator.of(context, rootNavigator: true).push(
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ),
                        );
                      }),
                ],
              )
            ],
          ),
        ));
  }
}
