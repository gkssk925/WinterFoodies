import 'package:flutter/material.dart';
import 'package:winter_foodies/config/my_colors.dart';
import 'package:winter_foodies/constants/build_context_extensions.dart';
import 'package:winter_foodies/presentation/customer/screens/common/widgets/round_button.dart';

class MyInfoScreen extends StatefulWidget {
  const MyInfoScreen({super.key});

  @override
  State<MyInfoScreen> createState() => _MyInfoScreenState();
}

class _MyInfoScreenState extends State<MyInfoScreen> {
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
            crossAxisAlignment: CrossAxisAlignment.start,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('닉네임'), Text('나는야 먹보')],
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
                            child: RoundButton(buttonText: '변경', onTap: () {}))
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
