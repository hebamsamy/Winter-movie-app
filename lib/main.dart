import 'package:flutter/material.dart';
import 'package:online_shop/Screens/HomeScreen.dart';
import 'package:online_shop/Screens/movieDetailsScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      initialRoute: "/",
      routes: {
        "/": (context) => HomeScreen(),
        "/movie": (context) => MovieDetailsScreen()
      },
    );
  }
}
