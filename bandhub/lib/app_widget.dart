import 'package:bandhub/modules/splash/splash_page.dart';
import 'package:bandhub/shared/themes/appcolors.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Band Hub',
      theme: ThemeData(
        primaryColor: AppColors.primary,
      ),
      home: const SplashPage(),
    );
  }
}
