import 'package:flutter/material.dart';
import 'package:interior_decor_shop_app_ui/core/color/color_palette.dart';
import 'package:interior_decor_shop_app_ui/core/enums/decor_category_enum.dart';

class DecorCategoryButton extends StatelessWidget {
  const DecorCategoryButton({
    super.key,
    required this.category,
    required this.isSelected,
    required this.onPressd,
  });

  final DecorCategoryEnum category;
  final bool isSelected;
  final Function() onPressd;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style:const  ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(Colors.transparent),
        elevation: MaterialStatePropertyAll(
          0.0,
        ),
      ),
      onPressed: onPressd,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            category.name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: isSelected
                  ? ColorPalette.resedaGreen
                  : ColorPalette.smokeyBlack.withOpacity(0.2),
              fontSize: isSelected ? 18.0 : 16.0,
            ),
          ),
          const SizedBox(height: 5.0),
          CircleAvatar(
            radius: 3.0,
            backgroundColor:
                isSelected ? ColorPalette.resedaGreen : Colors.transparent,
          ),
        ],
      ),
    );
  }
}
