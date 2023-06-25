import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:provider/provider.dart';
import 'package:winter_foodies/presentation/blocs/login_bloc.dart';
import 'package:winter_foodies/presentation/customer/screens/common/provider/user_provider.dart';
import 'package:winter_foodies/presentation/customer/screens/home/home_screen.dart';
import 'package:winter_foodies/presentation/customer/screens/login/login_screen.dart';
import 'package:winter_foodies/presentation/customer/screens/map/map_screen.dart';
import 'package:winter_foodies/presentation/customer/screens/menu/menu_screen.dart';
import 'package:winter_foodies/presentation/customer/screens/signup/sign_up_screen.dart';
import 'package:winter_foodies/presentation/customer/screens/store_detail/store_detail_screen.dart';
import 'package:winter_foodies/presentation/customer/screens/store_list/store_list_screen.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<UserProvider>(
        create: (_) => UserProvider(),
      ),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoginBloc(),
        )
      ],
      child: MaterialApp(
        title: 'Winter Foodies Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
          useMaterial3: true,
        ),
        routes: <String, WidgetBuilder>{
          '/': (BuildContext context) => const LoginScreen(),
          '/signup': (BuildContext context) => const SignUpScreen(),
          '/home': (BuildContext context) => const HomeScreen(),
          '/menu': (BuildContext context) => const MenuScreen(),
          '/storeList': (BuildContext context) => const StoreListScreen(),
          '/storeDetail': (BuildContext context) => const StoreDetailScreen(),
          '/map': (BuildContext context) => const MapScreen(),
        },
      ),
    );
  }
}
