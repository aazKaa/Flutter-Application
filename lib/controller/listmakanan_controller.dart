import 'package:flutter_application_2/models/makanan_model.dart';
import 'package:get/get.dart';

class ListMakananController extends GetxController{
  
 List<MakananModel> listMakanan = [
    MakananModel(
      namamakanan: "Soto Ayam", 
      hargamakanan: "10.000", 
      gambarmakanan: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEohGKOClDy23FmyyjPZhI5mytXutT2M_7dw-yHUsJdA&s=10", 
      rating: "4.7",
      deskripsi: "Soto ayam khas Kudus dengan kuah bening yang gurih, disajikan dengan irisan ayam dan tauge.",
      review: "-",
    ),
    MakananModel(
      namamakanan: "Lentog", 
      hargamakanan: "15.000", 
      gambarmakanan: "https://image.idn.media/post/20220101/screenshot-2022-01-02-05-10-19-72-1c337646f29875672b5a61192b9010f9-6d2cbb4bbec2340f770674be006d2944-0c6c08844a9f986440835cb11b7d41d0.jpg", 
      rating: "4.8",
      deskripsi: "Kuliner tradisional Kudus berupa lontong dengan sayur nangka muda (gori), tahu, dan tahu tempe.",
      review: "-",
    ),
    MakananModel(
      namamakanan: "Fried Chicken", 
      hargamakanan: "15.000", 
      gambarmakanan: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNb9ZS-MHhcWoyyGTonDLqnV-oIeWQLswoqPoChI2-pQ&s=10", 
      rating: "4.9",
      deskripsi: "ayam yang diberi tepung dan menjadi crispy.",
      review: "-",
    ),
    MakananModel(
      namamakanan: "Burger", 
      hargamakanan: "40.000", 
      gambarmakanan: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVpKE3zOw1VmC2PM1pbiiEA1EHoePyvkgGXhq5wm4ssw&s=10",
      rating: "4.8",
      deskripsi: "jenis makanan berupa roti bundar yang dipotong dua dan di bagian tengahnya diisi dengan patty",
      review: "-",
    ),
    MakananModel(
      namamakanan: "Pizza", 
      hargamakanan: "170.000", 
      gambarmakanan: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMjhItbn4XUyusLxtHAL2koXhMxi82orakm24PZYRx1Q&s=10", 
      rating: "5.0",
      deskripsi: "hidangan gurih asal Italia berupa adonan roti pipih bundar yang dipanggang dalam oven, biasanya dilapisi saus tomat dan keju.",
      review: "-",
    ),
  ];
}