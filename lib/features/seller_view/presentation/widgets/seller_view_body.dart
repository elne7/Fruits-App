import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fruits_app/core/widgets/app_bar_title.dart';
import 'package:fruits_app/features/home/presentation/widgets/custom_categoies_list.dart';
import 'package:fruits_app/features/home/presentation/widgets/seller_item.dart';
import 'package:fruits_app/features/seller_view/presentation/widgets/product_item.dart';

class SellerViewBody extends StatefulWidget {
  const SellerViewBody({super.key});

  @override
  State<SellerViewBody> createState() => _SellerViewBodyState();
}

class _SellerViewBodyState extends State<SellerViewBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppBarTitle(),
        centerTitle: true,
        shape: Border(
          bottom: BorderSide(color: Colors.grey.withAlpha(50), width: 1.0),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded, size: 40),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, size: 40),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SellerItem(),
            const SizedBox(height: 5),
            const Text(
              'Categories',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            CustomCategoriesList(
              categories: [
                'assets/imgs/fruits.png',
                'assets/imgs/vegetables.png',
                'assets/imgs/iphone.png',
                'assets/imgs/pet.png',
              ],
              titles: ['Fruits', 'Vegetables', 'Phones', 'Pets'],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Products',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                IconButton(
                  icon: const FaIcon(FontAwesomeIcons.arrowDownShortWide, size: 24),
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(height: 5),
            ListView.builder(
              shrinkWrap: true,
              itemCount: 2,
              itemBuilder: (context, index) => const ProductItem(),
            ),
          ],
        ),
      ),
    );
  }
}
