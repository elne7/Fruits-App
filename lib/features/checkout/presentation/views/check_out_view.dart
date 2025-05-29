import 'package:flutter/material.dart';
import 'package:fruits_app/core/widgets/app_bar_title.dart';
import 'package:fruits_app/features/checkout/presentation/widgets/check_out_view_body.dart';

class CheckOutView extends StatelessWidget {
  const CheckOutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppBarTitle(title: 'Checkout'),
        centerTitle: true,
        shape: Border(
          bottom: BorderSide(color: Colors.grey.withAlpha(30), width: 3.0),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: CheckOutViewBody(),
    );
  }
}
