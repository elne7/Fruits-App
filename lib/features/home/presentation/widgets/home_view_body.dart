import 'package:flutter/material.dart';
import 'package:fruits_app/core/constants/colors.dart';
import 'package:fruits_app/features/home/presentation/widgets/custom_categoies_list.dart';
import 'package:fruits_app/features/home/presentation/widgets/filter_drop_down_menu.dart';
import 'package:fruits_app/features/home/presentation/widgets/offers_page_view.dart';
import 'package:fruits_app/features/home/presentation/widgets/radio_buttons_section.dart';
import 'package:fruits_app/features/home/presentation/widgets/seller_item.dart';
import 'package:fruits_app/features/registeration/presentation/widgets/custom_sign_in_button.dart';
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
            onPressed: () {
              _filterdialogBuilder(context);
            },
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

Future<void> _filterdialogBuilder(BuildContext context) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Colors.white,
        title: Center(
          child: const Text(
            'Filter by',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        contentPadding: const EdgeInsets.all(20),
        content: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Deliverd to ',
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
                const SizedBox(width: 10),
                const Icon(Icons.delivery_dining_sharp, color: Colors.grey),
              ],
            ),
            const SizedBox(height: 10),
            FilterDropDownMenu(),
            const SizedBox(height: 10),
            RadioButtonsSection(),
            const SizedBox(height: 10),
          ],
        ),
        actions: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomSignInButton(
                text: Text(
                  'Apply Filter',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                bgColor: kPrimaryColor,
              ),
              TextButton(
                // style: TextButton.styleFrom(
                //   textStyle: Theme.of(context).textTheme.labelLarge,
                // ),
                child: Text(
                  'Close',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[600],
                    // fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        ],
      );
    },
  );
}
