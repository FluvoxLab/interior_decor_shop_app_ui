import 'package:flutter/material.dart';
import 'package:interior_decor_shop_app_ui/core/color/color_palette.dart';
import 'package:interior_decor_shop_app_ui/core/models/decor_model.dart';

class DecorDetailsScreen extends StatelessWidget {
  const DecorDetailsScreen({
    super.key,
    required this.decor,
  });

  final DecorModel decor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: Text(decor.title),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_border_outlined),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                decor.image,
                height: 500,
              ),
              Text(
                decor.title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: ColorPalette.resedaGreen
                ),
              ),
              const SizedBox(height: 13.0),
              Text(
                decor.descreption,
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  color: ColorPalette.smokeyBlack.withOpacity(0.6),
                  fontSize: 16.0,
                ),
              ),
              const SizedBox(height: 18.0),
              RichText(
                text: TextSpan(children: [
                  const TextSpan(
                    text: 'Price : ',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: ColorPalette.smokeyBlack,
                      fontSize: 18.0,
                    ),
                  ),
                  TextSpan(
                    text: '\$${decor.price}',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: ColorPalette.resedaGreen,
                      fontSize: 20.0,
                    ),
                  ),
                ]),
              ),
              const SizedBox(height: 24.0),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 60.0,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'Buy Now',
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
    );
  }
}
