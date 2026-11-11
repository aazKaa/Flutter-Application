import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/kuliner_model.dart';
import 'package:get/get.dart';

class DetailKulinerPage extends StatelessWidget {
  DetailKulinerPage({super.key});

  final Category kategori = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 191, 0),
        foregroundColor: Colors.white,
        title: Text(kategori.strCategory),
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
                fit: BoxFit.cover,
                image: NetworkImage(kategori.strCategoryThumb),
              ),
            ),
          ),
          SizedBox(height: 16),
          Text(
            kategori.strCategory,
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 6),
          Text(
            "ID Kategori: ${kategori.idCategory}",
            style: TextStyle(fontSize: 18, color: Color.fromARGB(255, 0, 0, 0)),
          ),
          Divider(height: 30),
          Text(
            "Deskripsi",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 6),
          Text(kategori.strCategoryDescription),
        ],
      ),
    );
  }
}