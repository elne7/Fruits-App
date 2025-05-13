import 'package:flutter/material.dart';
import 'package:fruits_app/core/constants/colors.dart';
import 'package:fruits_app/features/home/presentation/widgets/custom_categoies_list.dart';
import 'package:fruits_app/features/home/presentation/widgets/offers_page_view.dart';
import 'package:fruits_app/features/home/presentation/widgets/seller_item.dart';
import 'package:fruits_app/features/splash_view/presentation/widgets/switch_points.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Fruit Market',
          style: TextStyle(
            color: kPrimaryColor,
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: kPrimaryColor, size: 40),
            onPressed: () {},
          ),
          // const SizedBox(width: 10),
          IconButton(
            icon: const Icon(Icons.menu, color: kPrimaryColor, size: 40),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          const Divider(color: Colors.grey, thickness: 2),
          const SizedBox(height: 10),
          OffersPageView(),
          const SizedBox(height: 10),
          SwitchPoints(currentIndex: 1),
          const SizedBox(height: 10),
          CustomCategoriesList(),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'Sellers',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: kPrimaryColor,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Show All',
                  style: TextStyle(
                    fontSize: 18,
                    // fontWeight: FontWeight.bold,
                    color: kPrimaryColor,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: 3,
              // scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: SellerItem(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
