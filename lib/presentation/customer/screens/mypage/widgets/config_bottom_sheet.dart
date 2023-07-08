import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:winter_foodies/constants/build_context_extensions.dart';
import 'package:winter_foodies/presentation/customer/screens/mypage/provider/mypage_provider.dart';

class ConfigBottomSheet extends StatefulWidget {
  final String title;

  const ConfigBottomSheet({Key? key, required this.title}) : super(key: key);

  @override
  State<ConfigBottomSheet> createState() => _ConfigBottomSheetState();
}

class _ConfigBottomSheetState extends State<ConfigBottomSheet> {
  late MyPageProvider _myPageProvider;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await _myPageProvider.getMyPageConfig();
    });
  }

  @override
  void dispose() {
    super.dispose();

    _myPageProvider.clearConfigInfo();
  }

  @override
  Widget build(BuildContext context) {
    _myPageProvider = context.watch<MyPageProvider>();

    return Container(
      width: context.width,
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      ),
      child: Column(
        children: [
          Text(
            '환경설정',
            style: context.titleLarge(),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            _myPageProvider.myPageConfig.config,
            style: context.titleMedium(),
          ),
        ],
      ),
    );
  }
}
