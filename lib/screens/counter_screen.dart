import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getex/getx_controller/counter_controller.dart';
import 'package:getex/screens/home_screen.dart';

class CounterScreen extends StatelessWidget {
  CounterScreen({super.key});
  final controller = Get.put(
    CounterController(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter Screen"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Counter",
              style: TextStyle(fontSize: 20),
            ),
            Obx(
              () => Text(
                "${controller.count}",
                style: const TextStyle(
                  fontSize: 30,
                  color: Colors.deepPurple,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    controller.increment();
                  },
                  child: const Icon(Icons.add),
                ),
                ElevatedButton(
                  onPressed: () {
                    controller.decrement();
                  },
                  child: const Icon(Icons.remove),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                controller.reset();
              },
              child: const Icon(Icons.refresh),
            ),
            ElevatedButton(
              onPressed: () {
                Get.offAll(const HomeScreen());
              },
              child: const Text("Go To Home"),
            ),
          ],
        ),
      ),
    );
  }
}
