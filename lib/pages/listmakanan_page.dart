import 'package:flutter/material.dart';
import 'package:flutter_application_2/controller/listmakanan_controller.dart';
import 'package:flutter_application_2/models/makanan_model.dart';
import 'package:flutter_application_2/pages/detail_makanan_page.dart';
import 'package:get/get.dart';

class ListMakananPage extends StatelessWidget {
  ListMakananPage({super.key});

  final controller = Get.put(ListMakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 171, 217, 249),
      appBar: AppBar(
        title: Text(
          "List Makanan",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 0, 153, 255),
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(12),
        itemCount: controller.listMakanan.length,
        itemBuilder: (context, index) {
          final makanan = controller.listMakanan[index];
          return Card(
            color: Colors.white,
            margin: EdgeInsets.only(bottom: 10),
            child: InkWell(
              onTap: () {
                Get.to(() => DetailMakananPage(), arguments: makanan);
              },
              child: Padding(
                padding: EdgeInsets.all(14),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        makanan.gambarmakanan,
                        width: 60,
                        height: 60,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            makanan.namamakanan,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "Rp${makanan.hargamakanan}",
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                    Icon(Icons.chevron_right, color: Colors.grey),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}