import 'package:flutter/material.dart';
import 'package:food_app/screens/homepage/food_order_page.dart';
import 'package:food_app/screens/splash.dart';
import 'package:food_app/service/user_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<BookmarkProvider>(
          create: (context) => BookmarkProvider(),
        )
      ],
      child: MaterialApp(
        routes: {
          "/food_order_page": (context) => const FoodOrderPage(),
        },
        debugShowCheckedModeBanner: false,
        home: const Splash(),
      ),
    );
  }
}
