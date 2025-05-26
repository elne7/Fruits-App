import 'package:flutter/material.dart';
import 'package:fruits_app/core/constants/colors.dart';
import 'package:fruits_app/core/widgets/app_bar_title.dart';
import 'package:fruits_app/features/product/presentation/widgets/add_to_cart_button.dart';
import 'package:fruits_app/features/product/presentation/widgets/product_expansion_tile_list.dart';
import 'package:fruits_app/features/product/presentation/widgets/product_img.dart';

class ProductViewBody extends StatefulWidget {
  const ProductViewBody({super.key});

  @override
  State<ProductViewBody> createState() => _ProductViewBodyState();
}

class _ProductViewBodyState extends State<ProductViewBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppBarTitle(title: 'Product Name'),
        centerTitle: true,
        shape: Border(
          bottom: BorderSide(color: Colors.grey.withAlpha(30), width: 1.0),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black,
            size: 30,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite_border, size: 40),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.file_upload_outlined, size: 40),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ProductImg(),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Category Name',
                      style: TextStyle(
                        fontSize: 20,
                        color: kPrimaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'Product Name',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Price',
                      style: TextStyle(fontSize: 20, color: kPrimaryColor),
                    ),
                    Row(
                      children: [
                        const Text(
                          '12.00 KD',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(width: 5),
                        Text(
                          '14.00 KD',
                          style: TextStyle(
                            fontSize: 16,
                            color: kRedColor.withAlpha(70),
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 5),
            Wrap(
              children: [
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              'Sell Per: Kartoon',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 10),
            ProductExpansionTileList(),
          ],
        ),
      ),
      floatingActionButton: AddToCartButton(),
    );
  }
}
