import 'package:flutter/material.dart';
import 'package:fruits_app/features/home/presentation/widgets/category_item.dart';

class CustomCategoriesList extends StatefulWidget {
  const CustomCategoriesList({super.key});

  @override
  State<CustomCategoriesList> createState() => _CustomCategoriesListState();
}

class _CustomCategoriesListState extends State<CustomCategoriesList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CategoryItem(image: 'assets/imgs/categories/Restorant.png'),
          CategoryItem(image: 'assets/imgs/categories/Farm.png'),
          CategoryItem(image: 'assets/imgs/categories/Coffe.png'),
          CategoryItem(image: 'assets/imgs/categories/Pharmacy.png'),
        ],
      ),
    );
  }
}
