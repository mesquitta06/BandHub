import 'package:bandhub/shared/themes/app_images.dart';
import 'package:bandhub/shared/themes/appcolors.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Stack(
        //Stac
        children: [
          //Center(child: Image.asset(AppImages.person)),
          Center(child: Image.asset(AppImages.logoFull))
        ],
      ),
    );
  }
}
