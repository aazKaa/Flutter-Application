import 'package:flutter/widgets.dart';
import 'package:flutter_application_2/menu/history_page.dart';
import 'package:flutter_application_2/menu/home_page.dart';
import 'package:flutter_application_2/menu/profile_page.dart';
import 'package:get/get.dart';

class MainMenuController extends GetxController {
  final RxInt selectedIndex = 0.obs;

  void changePage(int index) {
    selectedIndex.value = index;
  }

  List<Widget> listPages = [HomePage(), HistoryPage(), ProfilePage()];
}