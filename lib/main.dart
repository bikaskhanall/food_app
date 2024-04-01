import 'package:flutter/material.dart';
import 'package:food_app/screens/splash.dart';

void main() {
  runApp(const Splash());
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(
//       providers: [
//         ChangeNotifierProvider<BookmarkProvider>(
//           create: (context) => BookmarkProvider(),
//         )
//       ],
//       child: MaterialApp(
//         routes: {
//           "/foodOrderPage": (context) => const FoodOrderPage(),
//         },
//         debugShowCheckedModeBanner: false,
//         home: const Splash(),
//       ),
//     );
//   }
// }
