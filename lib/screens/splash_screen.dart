import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_app/constants.dart';

import 'login_screen.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = 'SplashScreen';

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushNamedAndRemoveUntil(
          context, LoginScreen.routeName, (route) => false);
    });

    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Student',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: kTextWhiteColor,
                      fontSize: 50,
                      fontStyle: FontStyle.italic,
                      letterSpacing: 2,
                    ),
              ),
              Text(
                'App',
                style: GoogleFonts.pattaya(
                    fontSize: 50,
                    fontStyle: FontStyle.italic,
                    color: kTextWhiteColor,
                    letterSpacing: 2,
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
          Image.asset('assets/images/splash.png', height: 150, width: 150),
        ],
      ),
    );
  }
}
