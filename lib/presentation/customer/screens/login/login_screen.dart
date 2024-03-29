import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:winter_foodies/config/my_colors.dart';
import 'package:winter_foodies/constants/build_context_extensions.dart';
import 'package:winter_foodies/data/models/param/get_token_param.dart';
import 'package:winter_foodies/presentation/blocs/login_bloc.dart';
import 'package:winter_foodies/presentation/customer/screens/common/widgets/user_type_select_button.dart';
import 'package:winter_foodies/presentation/customer/screens/login/widgets/submit_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _idController = TextEditingController();
  final TextEditingController _pwdController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        if (state is LoginSuccess) {
          WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
            Navigator.of(context).pushNamed('/home');
          });
        }
        return Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: MyColors.white,
          body: Container(
            padding: const EdgeInsets.fromLTRB(20, 40, 20, 40),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/splash.png'), fit: BoxFit.cover)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      '윈터 푸디스',
                      style: context.displayMediumBold(color: MyColors.wine),
                    ),
                    Text(
                      '길거리 간식을 쉽게 즐기자!',
                      style: context.titleLarge(),
                    ),
                  ],
                ),
                Container(
                    padding: const EdgeInsets.all(20),
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                        color: MyColors.primary),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          Text(
                            '로그인',
                            style: context.titleLarge(),
                          ),
                          const SizedBox(
                            height: 10,
                          ),

                          const UserTypeSelectButton(),

                          const SizedBox(
                            height: 10,
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
                            decoration: InputDecoration(
                              hintText: '비밀번호 입력',
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
                                return '비밀번호를 입력해주세요!';
                              }
                              return null;
                            },
                          ),

                          const SizedBox(
                            height: 10,
                          ),

                          //로그인 버튼
                          SubmitButton(
                            onTapCallback: () {
                              setState(() {
                                if (_formKey.currentState!.validate()) {
                                  var getTokenParam = GetTokenParam(
                                    email: _idController.text,
                                    username: "헨리",
                                    password: _pwdController.text,
                                  );

                                  //로그인 수행
                                  BlocProvider.of<LoginBloc>(context).add(
                                      LoginRequested(
                                          getTokenParam: getTokenParam));

                                  // Navigator.of(context).pushNamed('/home');
                                }
                              });
                            },
                            btnText: '로그인',
                          ),
                          const SizedBox(
                            height: 5,
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

                          Row(
                            children: [
                              Text('아직 계정이 없으세요?'),
                              TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pushNamed('/signup');
                                  },
                                  child: Text('회원가입'))
                            ],
                          )
                        ],
                      ),
                    ))
              ],
            ),
          ),
        );
      },
    );
  }
}
