import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../utils/constants.dart';
import '../widgets/bottom_nav_bar.dart';
import '../widgets/categories_item_main.dart';
import '../widgets/category_item.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: SvgPicture.asset(
              "assets/svg/vector.svg",
              width: 30,
              height: 14,
            ),
          ),
        ),
        backgroundColor: AppColors.backgrounColor,
        centerTitle: true,
        title: const Center(
          child: Text(
            "Category",
            style: TextStyle(
                color: AppColors.redPinkMain,
                fontSize: 24,
                fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: Container(
              width: 28,
              height: 28,
              color: AppColors.actionsColor,
              child: Center(
                child: SvgPicture.asset(
                  "assets/svg/notification.svg",
                  width: 18,
                  height: 18,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(14),
            child: Container(
              width: 28,
              height: 28,
              color: AppColors.actionsColor,
              child: Center(
                child: SvgPicture.asset(
                  "assets/svg/search.svg",
                  width: 20,
                  height: 20,
                ),
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: const [
          SizedBox(height: 10),
          CategoryItemMain(),
          SizedBox(height: 18,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CategoryItem(
                image: 'assets/images/lunch.png',
                text: 'Lunch',

              ),
              CategoryItem(
                image: 'assets/images/breakfast.png',
                text: 'Dinner',

              ),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CategoryItem(
                image: 'assets/images/dinner.png',
                text: 'Lunch',

              ),
              CategoryItem(
                image: 'assets/images/vegan.png',
                text: 'Vegan',

              ),
            ],
          ),
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CategoryItem(
                image: 'assets/images/dessert.png',
                text: 'Dessert',

              ),
              CategoryItem(
                image: 'assets/images/drinks.png',
                text: 'Drinks',

              ),
            ],
          ),
          BottomNavBar()
        ],
      ),
      backgroundColor: AppColors.backgrounColor,
    );
  }
}