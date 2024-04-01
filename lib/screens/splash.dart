import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:food_app/screens/landing_page.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AnimatedSplashScreen(
          duration: 3000,
          splash: "assets/images/burger.jpeg",

          nextScreen: const LandingScreen(),

          // pageTransitionType: PageTransitionType.scale,
          backgroundColor: const Color.fromRGBO(252, 173, 82, 1),
        ));
  }
}
