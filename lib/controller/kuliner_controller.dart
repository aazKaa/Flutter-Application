import 'package:flutter_application_2/models/kuliner_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class KulinerController extends GetxController {
  var isLoading = false.obs;
  var kulinerModel = Rxn<KulinerModel>();

  @override
  void onInit() {
    super.onInit();
    getKuliner();
  }

  Future<void> getKuliner() async {
    try {
      isLoading.value = true;
      final url = Uri.parse(
        "https://www.themealdb.com/api/json/v1/1/categories.php",
      );
      final response = await http.get(url);

      if (response.statusCode == 200) {
        kulinerModel.value = kulinerModelFromJson(response.body);
      } else {
        Get.snackbar("gagal", "cek internet connection");
      }
    } catch (e) {
      Get.snackbar("gagal", e.toString());
      debugPrint("error nya $e");
    } finally {
      isLoading.value = false;
    }
  }
}
