import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:economiza_facil/shared/assets/image_strings.dart';
import 'package:economiza_facil/modules/signin/login/login_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static String route = '/';
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _loadNextScreen(context);
  }

  void _loadNextScreen(BuildContext context) async {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        if (mounted) {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (BuildContext context) => const LoginPage(),
            ),
          );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(244, 132, 36, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              ImageStrings.logoSplash,
              width: 180,
              height: 180,
            ),
            const Text(
              'Economiza\nFácil',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 45,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
