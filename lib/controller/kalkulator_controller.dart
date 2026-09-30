import 'package:get/get.dart';

class KalkulatorController extends GetxController {

  var hasil = 0.obs;

  void tambah(int angka1, int angka2) {
    int hasiltambah = angka1 + angka2;
    hasil.value = hasiltambah;
    Get.snackbar(
      "Hasil tambah", 
      "Hasil tambah : ${hasiltambah}");
  }

  void kurang(int angka1, int angka2) {
    int hasilkurang = angka1 - angka2;
    hasil.value = hasilkurang;
    Get.snackbar(
      "Hasil kurang", 
      "Hasil kurang : ${hasilkurang}");
  }

  void kali(int angka1, int angka2) {
    int hasilkali = angka1 * angka2;
    hasil.value = hasilkali;
    Get.snackbar(
      "Hasil kali", 
      "Hasil kali : ${hasilkali}");
  }

  void bagi(int angka1, int angka2) {
    if (angka2 != 0) {
      int hasilbagi = angka1 ~/ angka2;
      hasil.value = hasilbagi;
      Get.snackbar(
        "Hasil bagi", 
        "Hasil bagi : ${hasilbagi}");
    } else {
      Get.snackbar(
        "Error", 
        "Tidak bisa membagi dengan nol");
    }

  }
}