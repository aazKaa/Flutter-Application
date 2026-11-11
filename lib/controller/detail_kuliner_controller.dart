import 'package:get/get.dart';

class DetailKulinerController extends GetxController {
  late String namaKuliner;
  late String kategoriKuliner;
  late String asalKuliner;
  late String gambarKuliner;
  late String caraMembuat;

  @override
  void onInit() {
    super.onInit();
    // ambil data yang dikirim dari halaman list kuliner
    final arguments = Get.arguments;
    namaKuliner = arguments['namaKuliner'].toString();
    kategoriKuliner = arguments['kategoriKuliner'].toString();
    asalKuliner = arguments['asalKuliner'].toString();
    gambarKuliner = arguments['gambarKuliner'].toString();
    caraMembuat = arguments['caraMembuat'].toString();
  }
}