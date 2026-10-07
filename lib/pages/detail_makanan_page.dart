import 'package:flutter/material.dart';
import 'package:flutter_application_2/controller/listmakanan_controller.dart';
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
        title: Text(makanan.namamakanan),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                makanan.gambarmakanan,
                width: double.infinity,
                height: 220,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 16),
            Text(
              makanan.namamakanan,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 6),
            Text(
              "Rp. ${makanan.hargamakanan}",
              style: TextStyle(fontSize: 18, color: Colors.green),
            ),
            SizedBox(height: 12),
            Row(
              children: [
                Icon(Icons.star, color: Colors.amber),
                SizedBox(width: 6),
                Text("${makanan.rating} / 5.0"),
              ],
            ),
            Divider(height: 30),
            Text(
              "Deskripsi",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 6),
            Text(makanan.deskripsi),
            Divider(height: 30),
            Text(
              "Ulasan Pembeli",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 6),
            Text(makanan.review),
          ],
        ),
      ),
    );
  }
}