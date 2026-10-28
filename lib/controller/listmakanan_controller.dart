import 'package:flutter_application_2/models/makanan_model.dart';
import 'package:get/get.dart';

class ListMakananController extends GetxController {
  final RxList<MakananModel> listMakananController = <MakananModel>[
    MakananModel(
      namaMakanan: "Soto Ayam",
      hargaMakanan: "10.000",
      gambarMakanan:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEohGKOClDy23FmyyjPZhI5mytXutT2M_7dw-yHUsJdA&s=10",
      ratingMakanan: "4.7",
      deskripsiMakanan:"Soto ayam khas Kudus dengan kuah bening yang gurih, disajikan dengan irisan ayam dan tauge.",
      reviewMakanan: "-",
    ),
    MakananModel(
      namaMakanan: "Lentog",
      hargaMakanan: "15.000",
      gambarMakanan:"https://image.idn.media/post/20220101/screenshot-2022-01-02-05-10-19-72-1c337646f29875672b5a61192b9010f9-6d2cbb4bbec2340f770674be006d2944-0c6c08844a9f986440835cb11b7d41d0.jpg",
      ratingMakanan: "4.8",
      deskripsiMakanan:
          "Kuliner tradisional Kudus berupa lontong dengan sayur nangka muda (gori), tahu, dan tahu tempe.",
      reviewMakanan: "-",
    ),
    MakananModel(
      namaMakanan: "Fried Chicken",
      hargaMakanan: "15.000",
      gambarMakanan:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNb9ZS-MHhcWoyyGTonDLqnV-oIeWQLswoqPoChI2-pQ&s=10",
      ratingMakanan: "4.9",
      deskripsiMakanan: "ayam yang diberi tepung dan menjadi crispy.",
      reviewMakanan: "-",
    ),
    MakananModel(
      namaMakanan: "Burger",
      hargaMakanan: "40.000",
      gambarMakanan:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVpKE3zOw1VmC2PM1pbiiEA1EHoePyvkgGXhq5wm4ssw&s=10",
      ratingMakanan: "4.8",
      deskripsiMakanan:
          "jenis makanan berupa roti bundar yang dipotong dua dan di bagian tengahnya diisi dengan patty",
      reviewMakanan: "-",
    ),
    MakananModel(
      namaMakanan: "Pizza",
      hargaMakanan: "170.000",
      gambarMakanan:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMjhItbn4XUyusLxtHAL2koXhMxi82orakm24PZYRx1Q&s=10",
      ratingMakanan: "5.0",
      deskripsiMakanan:
          "hidangan gurih asal Italia berupa adonan roti pipih bundar yang dipanggang dalam oven, biasanya dilapisi saus tomat dan keju.",
      reviewMakanan: "-",
    ),
  ].obs;
}