import 'package:flutter/material.dart';
import 'package:fruits_app/features/home/presentation/widgets/category_item.dart';

class CustomCategoriesList extends StatelessWidget {
  const CustomCategoriesList({super.key, required this.categories, this.titles});

  final List<String> categories;
  final List<String>? titles;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CategoryItem(image: categories[0], title: titles != null ? titles![0] : null),
          CategoryItem(image: categories[1], title: titles != null ? titles![1] : null),
          CategoryItem(image: categories[2], title: titles != null ? titles![2] : null),
          CategoryItem(image: categories[3], title: titles != null ? titles![3] : null),
        ],
      ),
    );
  }
}
