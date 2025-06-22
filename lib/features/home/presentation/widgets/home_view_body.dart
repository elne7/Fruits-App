import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fruits_app/core/constants/colors.dart';
import 'package:fruits_app/core/widgets/app_bar_title.dart';
import 'package:fruits_app/core/widgets/custom_no_icon_button.dart';
import 'package:fruits_app/features/home/presentation/widgets/custom_categoies_list.dart';
import 'package:fruits_app/features/home/presentation/widgets/filter_drop_down_menu.dart';
import 'package:fruits_app/features/home/presentation/widgets/offers_page_view.dart';
import 'package:fruits_app/features/home/presentation/widgets/radio_buttons_section.dart';
import 'package:fruits_app/features/home/presentation/widgets/seller_item.dart';
import 'package:fruits_app/core/unused/switch_points.dart';

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
        title: AppBarTitle(),
        shape: Border(
          bottom: BorderSide(color: Colors.grey.withAlpha(30), width: 1.0),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: kPrimaryColor, size: 40),
            onPressed: () {},
          ),
          // const SizedBox(width: 10),
          IconButton(
            icon: const FaIcon(FontAwesomeIcons.sliders, color: kPrimaryColor, size: 40),
            onPressed: () {
              _filterdialogBuilder(context);
            },
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 10),
          OffersPageView(),
          const SizedBox(height: 10),
          SwitchPoints(currentIndex: 1),
          const SizedBox(height: 10),
          CustomCategoriesList(
            categories: [
              'assets/imgs/categories/Restorant.png',
              'assets/imgs/categories/Farm.png',
              'assets/imgs/categories/Coffe.png',
              'assets/imgs/categories/Pharmacy.png',
            ],
          ),
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
          mainAxisSize: MainAxisSize.min,
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
          ],
        ),
        actions: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomNoIconButton(text: 'Apply', bgColor: 'green'),
              TextButton(
                child: Text(
                  'Close',
                  style: TextStyle(fontSize: 18, color: Colors.grey[600]),
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
