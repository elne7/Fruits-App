import 'package:flutter/material.dart';
import 'package:fruits_app/features/registeration/presentation/views/otp_confirmation_view.dart';
// import 'package:fruits_app/features/registeration/presentation/views/sign_up_view.dart';
// import 'package:fruits_app/features/registeration/presentation/widgets/data_sign_in_view_body.dart';
// import 'package:fruits_app/features/registeration/presentation/widgets/login_view_body.dart';
// import 'package:fruits_app/features/registeration/presentation/widgets/otp_points_container.dart';
// import 'package:fruits_app/features/splash_view/presentation/views/introduction_view.dart';
// import 'package:fruits_app/features/splash_view/presentation/views/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const OtpConfirmationView(),
    );
  }
}
