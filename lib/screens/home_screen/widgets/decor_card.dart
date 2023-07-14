import 'package:flutter/material.dart';
import 'package:interior_decor_shop_app_ui/core/color/color_palette.dart';
import 'package:interior_decor_shop_app_ui/core/models/decor_model.dart';
import 'package:interior_decor_shop_app_ui/screens/decor_details_screen/decor_details_screen.dart';

class DecorCrad extends StatelessWidget {
  const DecorCrad({super.key, required this.decor});

  final DecorModel decor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        overlayColor: MaterialStatePropertyAll(
          ColorPalette.resedaGreen.withOpacity(0.11),
        ),
        padding: const MaterialStatePropertyAll(
          EdgeInsets.all(5.0),
        ),
        backgroundColor: const MaterialStatePropertyAll(
          Colors.transparent,
        ),
        elevation: const MaterialStatePropertyAll(
          0.0,
        ),
        foregroundColor: const MaterialStatePropertyAll(
          ColorPalette.smokeyBlack,
        ),
      ),
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => DecorDetailsScreen(decor: decor),
          ),
        );
      },
      child: Row(
        children: [
          Container(
            height: 120.0,
            width: 120.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(decor.image),
              ),
            ),
          ),
          const SizedBox(width: 10.0),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  decor.title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
                const SizedBox(height: 7.0),
                Text(
                  decor.descreption,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    color: ColorPalette.smokeyBlack.withOpacity(0.5),
                    fontSize: 13.0,
                  ),
                ),
                const SizedBox(height: 7.0),
                Text(
                  '\$ ${decor.price}',
                  style: const TextStyle(
                    fontWeight: FontWeight.normal,
                    color: ColorPalette.resedaGreen,
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
