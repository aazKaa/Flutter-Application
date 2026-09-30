import 'package:flutter_application_2/pages/confirmreg_page.dart';
import 'package:flutter_application_2/pages/registration_page.dart';
import 'package:get/get.dart';

class Routes {
  // list variabel nama halaman
  static const String registration = "/registration";
  static const String confirm_registration = "/confirm_registration";
  // others pages here

  // untuk kita daftarkan di main dart, isinya array page yang kita punya
  static final myPages = [
    GetPage(name: registration, page: () => RegistrationPage()),
    GetPage(name: confirm_registration, page: () => ConfirmRegPage()),
  ];
}