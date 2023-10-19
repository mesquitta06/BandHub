import 'package:bandhub/app_widget.dart';
import 'package:bandhub/modules/home/homepage.dart';
import 'package:bandhub/modules/login/login_page.dart';
import 'package:bandhub/modules/splash/splash_page.dart';
import 'package:bandhub/shared/themes/appcolors.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() {
  runApp(const AppFirebase());
}

class AppFirebase extends StatefulWidget {
  const AppFirebase({super.key});

  @override
  State<AppFirebase> createState() => _AppFirebaseState();
}

class _AppFirebaseState extends State<AppFirebase> {
  //---** variavel de inicialziação pós retorno do firebase---**//
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Material(
            child: Center(
              child: Text(
                "Não foi possível inicializar o firebase",
                textDirection: TextDirection.ltr,
              ),
            ),
          );
        } else if (snapshot.connectionState == ConnectionState.done) {
          return AppWidget();
        } else
          return Material(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
      },
    );
  }
}
