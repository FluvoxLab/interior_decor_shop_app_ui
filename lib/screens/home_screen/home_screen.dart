import 'package:flutter/material.dart';
import 'package:interior_decor_shop_app_ui/core/color/color_palette.dart';
import 'package:interior_decor_shop_app_ui/core/constant/decors_list_mock.dart';
import 'package:interior_decor_shop_app_ui/core/enums/decor_category_enum.dart';
import 'package:interior_decor_shop_app_ui/screens/home_screen/widgets/decor_card.dart';
import 'package:interior_decor_shop_app_ui/screens/home_screen/widgets/decor_category_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DecorCategoryEnum currentCategory = DecorCategoryEnum.chairs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Flexible(
                    child: Text(
                      'Interion In Unique Style',
                      maxLines: 2,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0,
                      ),
                    ),
                  ),
                  const SizedBox(width: 40.0),
                  CircleAvatar(
                    backgroundColor: ColorPalette.resedaGreen.withOpacity(0.5),
                    radius: 26.0,
                    child: const CircleAvatar(
                      radius: 23.0,
                      backgroundImage: AssetImage('assets/images/person.png'),
                    ),
                  ),
                ],
              ),
              Container(
                height: 40.0,
                margin: const EdgeInsets.symmetric(vertical: 30.0),
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: DecorCategoryEnum.values.length,
                  itemBuilder: (context, index) {
                    final category = DecorCategoryEnum.values[index];
                    return DecorCategoryButton(
                      category: category,
                      isSelected: currentCategory == category,
                      onPressd: () {
                        setState(() {
                          currentCategory = category;
                        });
                      },
                    );
                  },
                ),
              ),
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true, 
                itemCount: decorListMock.length,
                separatorBuilder: (context, index) => const SizedBox(height: 10.0),
                itemBuilder: (context, index) {
                  final decor = decorListMock[index];
                  return DecorCrad(decor: decor);
                },

              ),
            ],
          ),
        ),
      ),
    );
  }
}
