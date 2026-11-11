import 'package:flutter_application_2/controller/kuliner_controller.dart';
import 'package:flutter_application_2/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListKulinerPage extends StatelessWidget {
  ListKulinerPage({super.key});

  final controller = Get.put(KulinerController());

  static const Color warnaUtama = Color.fromARGB(255, 255, 191, 0);
  static const Color warnaLatar = Color.fromARGB(255, 171, 217, 249);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: warnaLatar,
      appBar: AppBar(
        title: Text(
          "Kuliner",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: warnaUtama,
        foregroundColor: Colors.white,
      ),
      body: Obx(() {
        if (controller.isLoading.value) {
          return Center(
            child: CircularProgressIndicator(color: warnaUtama),
          );
        }

        // kalau data belum ada atau kosong, tampilkan tombol coba lagi
        if (controller.kulinerModel.value == null ||
            controller.kulinerModel.value!.categories.isEmpty) {
          return Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Data tidak ditemukan",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: warnaUtama,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: controller.getKuliner,
                  child: Text("Coba lagi"),
                ),
              ],
            ),
          );
        }

        final makanan = controller.kulinerModel.value!.categories;

        return RefreshIndicator(
          color: warnaUtama,
          onRefresh: controller.getKuliner,
          child: ListView.builder(
            padding: EdgeInsets.all(12),
            itemCount: makanan.length,
            itemBuilder: (context, index) {
              final kuliner = makanan[index];
              return Card(
                color: Colors.white,
                elevation: 3,
                margin: EdgeInsets.only(bottom: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ListTile(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                  // kalau di klik, pindah ke halaman detail
                  onTap: () {
                    Get.toNamed(Routes.detail_kuliner, arguments: kuliner);
                  },
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      width: 60,
                      height: 60,
                      color: warnaLatar,
                      child: Image.network(
                        kuliner.strCategoryThumb.toString(),
                        fit: BoxFit.cover,
                        // kalau gambar gagal dimuat, tampilkan icon
                        errorBuilder: (context, error, stackTrace) =>
                            Icon(Icons.restaurant, size: 36, color: warnaUtama),
                      ),
                    ),
                  ),
                  title: Text(
                    kuliner.strCategory.toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: warnaUtama,
                    ),
                  ),
                  subtitle: Padding(
                    padding: EdgeInsets.only(top: 4),
                    child: Text(
                      kuliner.strCategoryDescription,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 13, color: Colors.black87),
                    ),
                  ),
                  trailing: Icon(Icons.chevron_right, color: warnaUtama),
                ),
              );
            },
          ),
        );
      }),
    );
  }
}