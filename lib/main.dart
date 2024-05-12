import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getex/screens/counter_screen.dart';
import 'package:getex/screens/fourth.screen.dart';
import 'package:getex/screens/home_screen.dart';
import 'package:getex/screens/third_screen.dart';
import 'package:getex/widgets/bottom_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX Trial',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: false,
          fontFamily: "Outfit"),
      home: MyBottomNavigationBar(),
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(name: '/HomeScreen', page: () => const HomeScreen()),
        GetPage(name: '/CounterScreen', page: () => CounterScreen()),
        GetPage(name: '/ThirdScreen', page: () => const ThirdScreen()),
        GetPage(name: '/FourthScreen', page: () => const FourthScreen()),
      ],
    );
  }
}
