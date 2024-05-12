import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:getex/widgets/bottom_navigation.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetX Trial"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/CounterScreen');
              },
              child: const Text(
                "Counter",
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/ThirdScreen');
              },
              child: const Text(
                "Third",
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/FourthScreen');
              },
              child: const Text(
                "Fourth",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
