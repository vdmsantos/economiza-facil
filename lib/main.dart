import 'package:flutter/material.dart';
import 'package:economiza_facil/modules/signin/splash/splash_screen.dart';
import 'package:economiza_facil/modules/signin/login/login_page.dart';
import 'package:economiza_facil/routes.dart'; 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: SplashScreen.route,
      routes: routes
    );
  }
}
