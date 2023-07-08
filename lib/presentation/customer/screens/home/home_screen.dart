import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:provider/provider.dart';
import 'package:winter_foodies/constants/enums.dart';
import 'package:winter_foodies/presentation/customer/screens/cart/cart_screen.dart';
import 'package:winter_foodies/presentation/customer/screens/common/provider/user_provider.dart';
import 'package:winter_foodies/presentation/customer/screens/menu/menu_screen.dart';
import 'package:winter_foodies/presentation/customer/screens/mypage/my_page_screen.dart';
import 'package:winter_foodies/presentation/manager/screens/manage_home/mange_home_screen.dart';
import 'package:winter_foodies/presentation/manager/screens/manage_mypage/manage_my_page_screen.dart';
import 'package:winter_foodies/presentation/manager/screens/manage_temp/mange_temp_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 1);

  List<Widget> _customerScreens = [CartScreen(), MenuScreen(), MyPageScreen()];
  List<Widget> _ManagerScreens = [
    ManageTempScreen(),
    ManageHomeScreen(),
    ManageMyPageScreen()
  ];

  List<PersistentBottomNavBarItem> _customerBottomNavi = [
    PersistentBottomNavBarItem(
      icon: Icon(CupertinoIcons.cart),
      title: ("장바구니"),
      activeColorPrimary: CupertinoColors.activeBlue,
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
    PersistentBottomNavBarItem(
      icon: Icon(CupertinoIcons.home),
      title: ("홈"),
      activeColorPrimary: CupertinoColors.activeBlue,
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
    PersistentBottomNavBarItem(
      icon: Icon(CupertinoIcons.person),
      title: ("마이"),
      activeColorPrimary: CupertinoColors.activeBlue,
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
  ];

  List<PersistentBottomNavBarItem> _managerBottomNavi = [
    PersistentBottomNavBarItem(
      icon: Icon(CupertinoIcons.cart),
      title: ("사장1"),
      activeColorPrimary: CupertinoColors.activeBlue,
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
    PersistentBottomNavBarItem(
      icon: Icon(CupertinoIcons.home),
      title: ("홈"),
      activeColorPrimary: CupertinoColors.activeBlue,
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
    PersistentBottomNavBarItem(
      icon: Icon(CupertinoIcons.person),
      title: ("마이"),
      activeColorPrimary: CupertinoColors.activeBlue,
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style1, // Choose the nav bar style with this property.
    );
  }

  List<Widget> _buildScreens() {
    var userProvider = context.watch<UserProvider>();
    var userType = userProvider.userType;

    if (UserType.MANAGER == userType) {
      return [ManageTempScreen(), ManageHomeScreen(), ManageMyPageScreen()];
    } else {
      return [CartScreen(), MenuScreen(), MyPageScreen()];
    }
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    var userProvider = context.watch<UserProvider>();
    var userType = userProvider.userType;

    if (UserType.MANAGER == userType) {
      return _managerBottomNavi;
    } else {
      return _customerBottomNavi;
    }
  }
}
