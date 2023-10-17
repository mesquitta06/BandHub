import 'package:bandhub/shared/themes/app_images.dart';
import 'package:bandhub/shared/themes/app_text_styles.dart';
import 'package:bandhub/shared/themes/appcolors.dart';
import 'package:bandhub/shared/widgets/social_login/social_login_button.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        child: Stack(children: [
          Container(
            color: AppColors.primary,
            height: size.height * 0.36,
            width: size.width,
          ),
          Positioned(
              top: 40,
              left: 0,
              right: 0,
              child: Image.asset(
                AppImages.person,
                width: 208,
                height: 280,
              )),
          Positioned(
            bottom: size.height * 0.13,
            left: 0,
            right: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  AppImages.logoFull,
                  width: 300,
                  height: 230,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 0,
                    left: 50,
                    right: 50,
                  ),
                  child: Text(
                    "Conecte-se com outros músicos, explore novos sons.",
                    textAlign: TextAlign.center,
                    style: AppTextStyles.titleHome,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 40, left: 40, top: 40),
                  child: SocialLoginButton(
                    ontap: () {
                      print("Clicou");
                    },
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
