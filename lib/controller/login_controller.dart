import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/routes.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController txtUSername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  var isLoading = false.obs;

  //method
  void login() async {
    if (txtUSername.text.toString().isEmpty ||
        txtPassword.text.toString().isEmpty) {
      Get.snackbar("Error", "Username dan Password tidak boleh kosong");
    } else {
      try {
        isLoading.value =
            true; //sebagai tanda di page  nya muncul loading widget
        final url = Uri.parse("https://mediadwi.com/api/latihan/login");

        final response = await http.post(
          url,
          body: {
            "username": txtUSername.text.toString(),
            "password": txtPassword.text.toString(),
          },
        );

        isLoading.value = false;
        if (response.statusCode == 200) {
          //kita ambil jsonnya massage   pindah tampilan ke main menu
          //contoh json paling sederhana
          final data = jsonDecode(response.body);
          if (data['status'] == true){
            Get.snackbar("berhasil", data['message']);
            Get.offNamed(Routes.drawer);
          } else {
            Get.snackbar("gagal", data['message']);
          }

        
        }else{
          Get.snackbar("gagal", "cek internet connection");
        }


      } catch (e) {
         Get.snackbar("gagal", e.toString());
      }

    }

  }

}