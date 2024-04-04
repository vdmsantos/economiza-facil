import 'package:flutter/material.dart';
import 'package:economiza_facil/modules/signin/splash/splash_screen.dart';
import 'package:economiza_facil/modules/signin/login/login_page.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.route: (context) => SplashScreen(),
  LoginPage.route: (context) => LoginPage(),
  
};
