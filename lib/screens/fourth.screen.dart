import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FourthScreen extends StatelessWidget {
  const FourthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fourth Screen"),
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
                Get.toNamed('/HomeScreen');
              },
              child: const Text(
                "Home",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
