import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/login_model.dart';
import 'package:flutter_application_2/routes.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  var isLoading = false.obs;
  var loginModel = Rxn<LoginModel>();

  void login() async {
    if (txtUsername.text.trim().isEmpty || txtPassword.text.trim().isEmpty) {
      Get.snackbar("Error", "Username dan Password tidak boleh kosong");
      return;
    }

    try {
      isLoading.value = true;

      final url = Uri.parse("https://mediadwi.com/api/latihan/login");

      final response = await http.post(
        url,
        body: {
          "username": txtUsername.text.trim(),
          "password": txtPassword.text.trim(),
        },
      );

      isLoading.value = false;

      if (response.statusCode == 200) {
        loginModel.value = loginModelFromJson(response.body);

        if (loginModel.value?.status == true) {
          Get.snackbar("berhasil", loginModel.value!.message.toString());
          Get.offAllNamed("/kuliner"); // Pindah ke halaman main menu
          // pindah ke main menu, contoh:
          // Get.offNamed(Routes.main_menu);
        } else {
          Get.snackbar("gagal", loginModel.value!.message.toString());
        }
      } else {
        Get.snackbar("gagal", "cek internet connection");
      }
    } catch (e) {
      isLoading.value = false;
      Get.snackbar("gagal", e.toString());
    }
  }

  @override
  void onClose() {
    txtUsername.dispose();
    txtPassword.dispose();
    super.onClose();
  }
}