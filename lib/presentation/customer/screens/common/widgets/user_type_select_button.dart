import 'package:flutter/material.dart';
import 'package:winter_foodies/config/my_colors.dart';
import 'package:winter_foodies/constants/build_context_extensions.dart';
import 'package:winter_foodies/constants/enums.dart';
import 'package:winter_foodies/presentation/customer/screens/common/provider/user_provider.dart';
import 'package:provider/provider.dart';

class UserTypeSelectButton extends StatefulWidget {
  const UserTypeSelectButton({super.key});

  @override
  State<UserTypeSelectButton> createState() => _UserTypeSelectButtonState();
}

class _UserTypeSelectButtonState extends State<UserTypeSelectButton> {
  late UserProvider _userProvider;

  @override
  Widget build(BuildContext context) {
    _userProvider = context.watch<UserProvider>();

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {
            _userProvider.setUserType(UserType.CUSTOMER);
          },
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(10.0),
                ),
                color: UserType.CUSTOMER == _userProvider.userType
                    ? MyColors.darkOrange
                    : MyColors.white),
            child: Text(
              '구매자',
              style: context.titleMedium(),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            _userProvider.setUserType(UserType.MANAGER);
          },
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(10.0),
                ),
                color: UserType.MANAGER == _userProvider.userType
                    ? MyColors.darkOrange
                    : MyColors.white),
            child: Text(
              '사장님',
              style: context.titleMedium(),
            ),
          ),
        ),
      ],
    );
  }
}
