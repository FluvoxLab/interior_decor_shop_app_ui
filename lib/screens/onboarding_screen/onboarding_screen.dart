import 'package:flutter/material.dart';
import 'package:interior_decor_shop_app_ui/core/color/color_palette.dart';
import 'package:interior_decor_shop_app_ui/screens/home_screen/home_screen.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/lamp_room.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    ColorPalette.smokeyBlack.withOpacity(0.8),
                    ColorPalette.smokeyBlack,
                  ],
                ),
              ),
              padding: const EdgeInsets.only(
                left: 20.0,
                right: 20.0,
                bottom: 20.0,
                top: 200.0,
              ),
              child: SafeArea(
                top: false,
                child: Column(
                  children: [
                    const Text(
                      'Make Home For Better Livings',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 29.0,
                          color: ColorPalette.snowWhite),
                    ),
                    const SizedBox(height: 17.0),
                    Text(
                      'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s when an unknown printer took a galley of type and scrambled',
                      style: TextStyle(
                        fontSize: 17.0,
                        color: ColorPalette.snowWhite.withOpacity(0.7),
                      ),
                    ),
                    const SizedBox(height: 17.0),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 60.0,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const HomeScreen(),
                            ),
                          );
                        },
                        child: const Text(
                          'Get started',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
