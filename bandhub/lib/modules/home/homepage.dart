import 'package:bandhub/shared/themes/app_text_styles.dart';
import 'package:bandhub/shared/themes/appcolors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height * 0.13,
        color: AppColors.primary,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 80, left: 50, right: 0),
              child: Container(
                child: Text(
                  "Inicio",
                  style: AppTextStyles.titleBoldBackground,
                ),
              ),
            ),
            Text("Conteudo App"),
          ],
        ),
      ),
    );
  }
}
