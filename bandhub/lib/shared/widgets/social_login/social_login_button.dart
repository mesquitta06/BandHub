import 'package:bandhub/shared/themes/app_images.dart';
import 'package:bandhub/shared/themes/app_text_styles.dart';
import 'package:bandhub/shared/themes/appcolors.dart';
import 'package:flutter/material.dart';

class SocialLoginButton extends StatelessWidget {
  final VoidCallback ontap;

  SocialLoginButton({super.key, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: 56,
        decoration: BoxDecoration(
            color: AppColors.shape,
            borderRadius: BorderRadius.circular(5),
            border:
                Border.fromBorderSide((BorderSide(color: AppColors.stroke)))),
        child: Row(
          children: [
            Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      AppImages.google,
                      height: 20,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Container(
                      height: 56,
                      width: 1,
                      color: AppColors.stroke,
                    )
                  ],
                )),
            Expanded(
                flex: 4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Entrar com Google", style: AppTextStyles.buttonGray),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
