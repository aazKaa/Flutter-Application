import 'package:flutter/material.dart';
import 'package:flutter_application_2/controller/confirmreg_controller.dart';
import 'package:get/get.dart';

class ConfirmRegPage extends StatelessWidget {
  ConfirmRegPage({super.key});

  final controller = Get.put(ConfirmRegController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        title: const Text("Confirm Registration"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Nama",
                      style: TextStyle(fontSize: 14, color: Colors.blue),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      "${controller.nama}",
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () => Get.back(),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 14),
              ),
              child: const Text("Oke"),
            ),
          ],
        ),
      ),
    );
  }
}