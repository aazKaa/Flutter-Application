import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_application_2/controller/listmakanan_controller.dart';

    class HomePage extends StatelessWidget {
      HomePage({super.key});

      final listController = Get.put(ListMakananController());

      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(title: const Text("List game")),
          body: Container(
            margin: const EdgeInsets.all(10),
            child: Obx(
              () => SizedBox(
                height: 240,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: listController.listMakananController.length,
                  itemBuilder: (context, index) {
                    final makanan = listController.listMakananController[index];

                    return InkWell(
                      onTap: () {
                      },
                      child: Card(
                        elevation: 10,
                        margin: const EdgeInsets.symmetric(horizontal: 8),
                        child: SizedBox(
                          width: 200,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.network(
                                makanan.gambarMakanan,
                                height: 120,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      makanan.namaMakanan,
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 4),
                                    Text(
                                      "Rp. ${makanan.hargaMakanan}",
                                      style: const TextStyle(
                                        fontSize: 14,
                                        color: Colors.green,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },  
                ),
              ),
            ),
          ),
        );
      }
    }