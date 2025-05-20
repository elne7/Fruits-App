import 'package:flutter/material.dart';
import 'package:fruits_app/core/constants/colors.dart';

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
        title: const Text(
          'Fruit Market',
          style: TextStyle(
            color: kPrimaryColor,
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        shape: Border(
          bottom: BorderSide(color: Colors.grey.withAlpha(30), width: 1.0),
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[Text('Seller View Body')],
        ),
      ),
    );
  }
}
