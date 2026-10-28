import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/makanan_model.dart';
import 'package:get/get.dart';

class DetailMakananPage extends StatelessWidget {
  DetailMakananPage({super.key});

  final MakananModel makanan = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 153, 255),
        foregroundColor: Colors.white,
        title: Text(makanan.namaMakanan),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Container(
            width: double.infinity,
            height: 220,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: NetworkImage(makanan.gambarMakanan),
              ),
            ),
          ),
          SizedBox(height: 16),
          Text(
            makanan.namaMakanan,
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 6),
          Text(
            "Rp. ${makanan.hargaMakanan}",
            style: TextStyle(fontSize: 18, color: const Color.fromARGB(255, 0, 0, 0)),
          ),
          SizedBox(height: 12),
          Row(
            children: [
              SizedBox(width: 6),
              Text("${makanan.ratingMakanan} / 5.0"),  
            ],
          ),
          Divider(height: 30),
          Text(
            "Deskripsi",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 6),
          Text(makanan.deskripsiMakanan),
          Divider(height: 30),
          Text(
            "Ulasan Pembeli",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 6),
          Text(makanan.reviewMakanan),
        ],
      ),
    );
  }
}