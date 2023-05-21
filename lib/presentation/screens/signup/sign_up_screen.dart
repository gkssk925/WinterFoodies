import 'package:flutter/material.dart';
import 'package:winter_foodies/config/my_colors.dart';
import 'package:winter_foodies/constants/build_context_extensions.dart';
import 'package:winter_foodies/presentation/screens/login/widgets/submit_button.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _idController = TextEditingController();
  final TextEditingController _pwdController = TextEditingController();
  final TextEditingController _storeNameController = TextEditingController();
  final TextEditingController _locationController = TextEditingController();

    final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: MyColors.primary,
        appBar: AppBar(
          title: Text(
            '윈터 푸디스',
            style: context.displayMediumBold(color: MyColors.wine),
          ),
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.arrow_back_ios)),
          backgroundColor: MyColors.primary,
        ),
        body: Container(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 40),
          child: Form(
              key: _formKey,
            child: Column(
              children: [
                Text(
                  '회원가입',
                  style: context.titleLarge(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          '구매자',
                          style: context.titleMedium(),
                        )),
                    ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          '사장님',
                          style: context.titleMedium(),
                        )),
                  ],
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '아이디',
                    style: context.titleMedium(),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                TextFormField(
                  controller: _idController,
                  decoration: const InputDecoration(
                    hintText: '아이디 입력',
                    fillColor: MyColors.white,
                    filled: true,
                  ),
                  validator: (value) {
                    if (value != null && value.isEmpty) {
                      return '아이디를 입력해주세요!';
                    }
                    return null;
                  },
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '비밀번호',
                    style: context.titleMedium(),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                TextFormField(
                  controller: _pwdController,
                  decoration: const InputDecoration(
                    hintText: '비밀번호 입력',
                    fillColor: MyColors.white,
                    filled: true,
                  ),
                  validator: (value) {
                    if (value != null && value.isEmpty) {
                      return '비밀번호를 입력해주세요!';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  width: 10,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '상호명',
                    style: context.titleMedium(),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                TextFormField(
                  controller: _storeNameController,
                  decoration: const InputDecoration(
                    hintText: '상호명 입력',
                    fillColor: MyColors.white,
                    filled: true,
                  ),
                  validator: (value) {
                    if (value != null && value.isEmpty) {
                      return '상호명을 입력해주세요!';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  width: 10,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '위치',
                    style: context.titleMedium(),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                TextFormField(
                  controller: _locationController,
                  decoration: const InputDecoration(
                    hintText: '위치 입력',
                    fillColor: MyColors.white,
                    filled: true,
                  ),
                  validator: (value) {
                    if (value != null && value.isEmpty) {
                      return '위치를 입력해주세요!';
                    }
                    return null;
                  },
                ),
          
                const Divider(
                          thickness: 1,
                          color: MyColors.black,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          '소셜 로그인',
                          style: context.titleMedium(),
                        ),
          
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset(
                              'assets/naver.png',
                              width: 40,
                              height: 40,
                            ),
                            Image.asset(
                              'assets/kakao.png',
                              width: 40,
                              height: 40,
                            ),
                            Image.asset(
                              'assets/google.png',
                              width: 40,
                              height: 40,
                            ),
                          ],
                        ),
          
                                         const SizedBox(
                          height: 10,
                        ),
          
                        //회원가입 버튼
                        SubmitButton(onTapCallback: () {
                          setState(() {
                           Navigator.of(context).pushNamed('/menu');
                            if (_formKey.currentState!.validate()) {
                              //회원가입 수행
                            }
                          });
                        },
                        btnText: '회원가입',),
              ],
            ),
          ),
        ));
  }
}
