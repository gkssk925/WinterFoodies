import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

extension BuildContextEntension<T> on BuildContext {
  // text styles
  TextStyle? displayLarge({Color? color = const Color(0xff000000)}) =>
      GoogleFonts.roboto(
          textStyle: Theme.of(this).textTheme.displayLarge,
          color: color,
          fontWeight: FontWeight.bold);
  TextStyle? displayMedium({Color? color = const Color(0xff000000)}) =>
      GoogleFonts.roboto(
          textStyle: Theme.of(this).textTheme.displayMedium, color: color);
    TextStyle? displayMediumBold({Color? color = const Color(0xff000000)}) =>
      GoogleFonts.roboto(
          textStyle: Theme.of(this).textTheme.displayMedium, color: color, fontWeight: FontWeight.bold);
  TextStyle? displaySmall({Color? color = const Color(0xff000000)}) =>
      GoogleFonts.roboto(
          textStyle: Theme.of(this).textTheme.displaySmall, color: color);

  TextStyle? headlineLarge({Color? color = const Color(0xff000000)}) =>
      GoogleFonts.roboto(
          textStyle: Theme.of(this).textTheme.headlineLarge, color: color);
  TextStyle? headlineMedium({Color? color = const Color(0xff000000)}) =>
      GoogleFonts.roboto(
          textStyle: Theme.of(this).textTheme.headlineMedium,
          color: color,
          fontWeight: FontWeight.bold);
  TextStyle? headlineSmall({Color? color = const Color(0xff000000)}) =>
      GoogleFonts.roboto(
          textStyle: Theme.of(this).textTheme.headlineSmall, color: color);

  TextStyle? titleLarge({Color? color = const Color(0xff000000)}) =>
      GoogleFonts.roboto(
          textStyle: Theme.of(this).textTheme.titleLarge,
          color: color,
          fontWeight: FontWeight.bold);
  TextStyle? titleMedium({Color? color = const Color(0xff000000)}) =>
      GoogleFonts.roboto(
          textStyle: Theme.of(this).textTheme.titleMedium, color: color);
  TextStyle? titleMediumBold({Color? color = const Color(0xff000000)}) =>
      GoogleFonts.roboto(
          textStyle: Theme.of(this).textTheme.titleMedium,
          color: color,
          fontWeight: FontWeight.bold);
  TextStyle? titleSmall({Color? color = const Color(0xff000000)}) =>
      GoogleFonts.roboto(
          textStyle: Theme.of(this).textTheme.titleSmall, color: color);

  TextStyle? labelLarge({Color? color = const Color(0xff000000)}) =>
      GoogleFonts.roboto(
          textStyle: Theme.of(this).textTheme.labelLarge, color: color);
  TextStyle? labelMedium({Color? color = const Color(0xff000000)}) =>
      GoogleFonts.roboto(
          textStyle: Theme.of(this).textTheme.labelMedium, color: color);
  TextStyle? labelSmall({Color? color = const Color(0xff000000)}) =>
      GoogleFonts.roboto(
          textStyle: Theme.of(this).textTheme.labelSmall, color: color);

  TextStyle? bodyLarge({Color? color = const Color(0xff000000)}) =>
      GoogleFonts.roboto(
          textStyle: Theme.of(this).textTheme.bodyLarge, color: color);
  TextStyle? bodyMedium({Color? color = const Color(0xff000000)}) =>
      GoogleFonts.roboto(
          textStyle: Theme.of(this).textTheme.bodyMedium, color: color);
  TextStyle? bodySmall({Color? color = const Color(0xff000000)}) =>
      GoogleFonts.roboto(
          textStyle: Theme.of(this).textTheme.bodySmall, color: color);

  //Colors
  Color get white => const Color(0xffffffff);
  Color get black => const Color(0xff000000);
  Color get primary => const Color(0xff4496e0);
  Color get onPrimary => const Color(0xffffffff);
  Color get primaryContainer => const Color(0xffb4e6ff);
  Color get onPrimaryContainer => const Color(0xff0f1314);
  Color get secondary => const Color(0xff202b6d);
  Color get onSecondary => const Color(0xffffffff);
  Color get secondaryContainer => const Color(0xff99ccf9);
  Color get onSecondaryContainer => const Color(0xff0d1114);
  Color get tertiary => const Color(0xff514239);
  Color get onTertiary => const Color(0xffffffff);
  Color get tertiaryContainer => const Color(0xffbaa99d);
  Color get onTertiaryContainer => const Color(0xff100e0d);
  Color get error => const Color(0xffb00020);
  Color get onError => const Color(0xffffffff);
  Color get errorContainer => const Color(0xfffcd8df);
  Color get onErrorContainer => const Color(0xff141213);
  Color get background => const Color(0xfff8fbfd);
  Color get onBackground => const Color(0xff090909);
  Color get surface => const Color(0xfff8fbfd);
  Color get onSurface => const Color(0xff090909);
  Color get surfaceVariant => const Color(0xfff1f7fc);
  Color get onSurfaceVariant => const Color(0xff121313);
  Color get outline => const Color(0xff565656);
  Color get shadow => const Color(0xff000000);
  Color get inverseSurface => const Color(0xff121518);
  Color get onInverseSurface => const Color(0xfff5f5f5);
  Color get inversePrimary => const Color(0xffddfeff);
  Color get surfaceTint => const Color(0xff4496e0);
  Color get lightGrayText => const Color(0xFF949CA9);
  Color get lightGrayBorder => const Color(0xFFE8E9EA);
  Color get darkGrayText => const Color(0xFF586A84);
  Color get lightBrown => const Color(0xFFAEA197);

  //width, height
  double get width => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height;

  //Pop-up
  // Future<T?> showAnimationDialog({
  //   required BuildContext context,
  //   required Widget child,
  // }) {
  //   return showAnimatedDialog(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return child;
  //     },
  //     barrierDismissible: false,
  //     animationType: DialogTransitionType.slideFromRight,
  //     curve: Curves.easeOut,
  //     duration: const Duration(milliseconds: 300),
  //   );
  // }
}
