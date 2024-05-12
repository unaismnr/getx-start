import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getex/getx_controller/btm_ngtion_cntrl.dart';
import 'package:getex/screens/counter_screen.dart';
import 'package:getex/screens/home_screen.dart';

class MyBottomNavigationBar extends StatelessWidget {
  MyBottomNavigationBar({super.key});

  final _controller = Get.put(
    BottomNavigationController(),
  );

  final screens = [const HomeScreen(), CounterScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => IndexedStack(
          index: _controller.selectedIndex.value,
          children: screens,
        ),
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          onTap: (index) => _controller.changeTabIndex(index),
          currentIndex: _controller.selectedIndex.value,
          selectedItemColor: Colors.deepPurple,
          unselectedItemColor: const Color.fromARGB(255, 97, 97, 97),
          showSelectedLabels: true,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          selectedFontSize: 12,
          unselectedFontSize: 12,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.countertops),
              label: "Counter",
            ),
          ],
        ),
      ),
    );
  }
}
