import 'package:get/get.dart';

class BottomNavigationController extends GetxController {
  var selectedIndex = 0.obs;

  changeTabIndex(int index) => selectedIndex.value = index;
}
