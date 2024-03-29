import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:winter_foodies/config/my_colors.dart';
import 'package:winter_foodies/constants/build_context_extensions.dart';
import 'package:winter_foodies/constants/enums.dart';
import 'package:winter_foodies/presentation/customer/screens/common/provider/user_provider.dart';
import 'package:winter_foodies/presentation/customer/screens/common/widgets/round_button.dart';
import 'package:winter_foodies/presentation/customer/screens/common/widgets/user_type_select_button.dart';
import 'package:winter_foodies/presentation/customer/screens/login/widgets/submit_button.dart';

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

  late UserProvider _userProvider;

  @override
  Widget build(BuildContext context) {
    _userProvider = context.watch<UserProvider>();

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
                //const UserTypeSelectButton(),
                //아이디
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '아이디',
                    style: context.titleMedium(),
                  ),
                ),

                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: _idController,
                        decoration: InputDecoration(
                          hintText: '아이디 입력',
                          fillColor: MyColors.white,
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 10),
                        ),
                        validator: (value) {
                          if (value != null && value.isEmpty) {
                            return '아이디를 입력해주세요!';
                          }
                          return null;
                        },
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    RoundButton(buttonText: '중복확인', onTap: () {})
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),

                UserType.CUSTOMER == _userProvider.userType
                    ? Column(
                        children: [
                          //닉네임
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '닉네임',
                              style: context.titleMedium(),
                            ),
                          ),

                          Row(
                            children: [
                              Expanded(
                                child: TextFormField(
                                  controller: _idController,
                                  decoration: InputDecoration(
                                    hintText: '닉네임 입력',
                                    fillColor: MyColors.white,
                                    filled: true,
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    contentPadding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                  ),
                                  validator: (value) {
                                    if (value != null && value.isEmpty) {
                                      return '닉네임을 입력해주세요!';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              RoundButton(buttonText: '중복확인', onTap: () {})
                            ],
                          ),
                        ],
                      )
                    : SizedBox(),

                const SizedBox(
                  height: 10,
                ),

                //비밀번호
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '비밀번호',
                    style: context.titleMedium(),
                  ),
                ),

                TextFormField(
                  controller: _pwdController,
                  decoration: InputDecoration(
                    hintText: '비밀번호 입력',
                    fillColor: MyColors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                  ),
                  validator: (value) {
                    if (value != null && value.isEmpty) {
                      return '비밀번호를 입력해주세요!';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 10,
                ),

                //비밀번호 확인
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '비밀번호 확인',
                    style: context.titleMedium(),
                  ),
                ),

                TextFormField(
                  controller: _pwdController,
                  decoration: InputDecoration(
                    hintText: '비밀번호 확인',
                    fillColor: MyColors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                  ),
                  validator: (value) {
                    if (value != null && value.isEmpty) {
                      return '비밀번호를 확인해주세요!';
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
                SubmitButton(
                  onTapCallback: () {
                    setState(() {
                      Navigator.of(context).pushNamed('/home');
                      if (_formKey.currentState!.validate()) {
                        //회원가입 수행
                      }
                    });
                  },
                  btnText: '회원가입',
                ),
              ],
            ),
          ),
        ));
  }
}
