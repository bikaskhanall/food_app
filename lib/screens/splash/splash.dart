import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:food_app/screens/food/food_order_page.dart';
import 'package:food_app/screens/landing_page/landing_page.dart';
import 'package:food_app/viewmodel/cart_provider.dart';
import 'package:provider/provider.dart';

import '../../viewmodel/home_provider.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ItemCartProvider>(
          create: (context) => ItemCartProvider(),
        ),
        ChangeNotifierProvider<HomeProvider>(
          create: (context) => HomeProvider(),
        )
      ],
      child: MaterialApp(
        routes: {
          "/foodOrderPage": (context) => const FoodOrderPage(),
        },
        debugShowCheckedModeBanner: false,
        home: AnimatedSplashScreen(
          duration: 3000,
          splash: "assets/images/burger.jpeg",
          nextScreen: const LandingScreen(),
          backgroundColor: const Color.fromRGBO(252, 173, 82, 1),
        ),
      ),
    );
  }
}
