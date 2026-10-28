import 'package:flutter_application_2/pages/confirmreg_page.dart';
import 'package:flutter_application_2/pages/detail_makanan_page.dart';
import 'package:flutter_application_2/pages/listmakanan_page.dart';
import 'package:flutter_application_2/pages/main_menu_page.dart';
import 'package:flutter_application_2/pages/menu_drawer.dart';
import 'package:flutter_application_2/pages/registration_page.dart';
import 'package:get/get.dart';

class Routes {
  // list variabel nama halaman
  static const String registration = "/registration";
  static const String confirm_registration = "/confirm_registration";
  static const String list_makanan = "/list_makanan";
  static const String detail_makanan = '/detail-makanan';
  static const String main_menu = '/main-menu';
  static const String drawer = '/drawer';
  // others pages here

  // untuk kita daftarkan di main dart, isinya array page yang kita punya
  static final pages = [
    GetPage(
      name: registration,
      page: () => RegistrationPage()
    ),
    GetPage(
      name: confirm_registration,
      page: () => ConfirmRegPage()
    ),
    GetPage(
      name: list_makanan,
      page: () => ListMakananPage()
    ),
    GetPage(
      name: detail_makanan,
      page: () => DetailMakananPage()
    ),
    GetPage(
      name: main_menu,
      page: () => MainMenuPage()
    ),
    GetPage(
      name: drawer,
      page: () => MenuDrawer()
    ),
  ];
}