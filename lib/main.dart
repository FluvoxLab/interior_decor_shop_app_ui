import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:interior_decor_shop_app_ui/core/color/color_palette.dart';
import 'package:interior_decor_shop_app_ui/screens/onboarding_screen/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Interior Decor Shop',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: ColorPalette.snowWhite,
        appBarTheme: const AppBarTheme(
          elevation: 0.0,
          color: ColorPalette.snowWhite,
          foregroundColor: ColorPalette.smokeyBlack,
        ),
        fontFamily: GoogleFonts.ubuntu().fontFamily,
        colorScheme: ColorScheme.fromSeed(
          seedColor: ColorPalette.resedaGreen,
        ),
      ),
      home: const OnBoardingScreen(),
    );
  }
}
