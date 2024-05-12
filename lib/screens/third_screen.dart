import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Third Screen"),
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
                Get.toNamed('/HomeScreen');
              },
              child: const Text(
                "Home",
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
