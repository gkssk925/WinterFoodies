import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:winter_foodies/presentation/screens/login/login_screen.dart';
import 'package:winter_foodies/presentation/screens/menu/menu_screen.dart';
import 'package:winter_foodies/presentation/screens/signup/sign_up_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Winter Foodies Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => const LoginScreen(),
        '/signup': (BuildContext context) => const SignUpScreen(),
        '/menu': (BuildContext context) => const MenuScreen(),
        // '/appVersionDetail': (BuildContext context) =>
        //     const AppVersionDetailScreen(),
        // '/login': (BuildContext context) => const LoginScreen(),
      },
    );
  }
}
