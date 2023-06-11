import 'package:flutter/material.dart';
import 'package:winter_foodies/constants/enums.dart';

class UserProvider with ChangeNotifier {
  UserType _userType = UserType.CUSTOMER;

  UserType get userType => _userType;

  Future<void> setUserType(UserType userType) async {
    _userType = userType;
    notifyListeners();
  }
}
