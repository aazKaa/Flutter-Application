import 'package:flutter/material.dart';
import 'package:flutter_application_2/components/custom_textfield.dart';
import 'package:flutter_application_2/controller/kalkulator_controller.dart';
import 'package:get/get.dart';

class KalkulatorPage extends StatelessWidget {
  KalkulatorPage({super.key});

  final controller = Get.put(KalkulatorController());

  @override
  Widget build(BuildContext context) {
    TextEditingController txtAngka1 = TextEditingController();
    TextEditingController txtAngka2 = TextEditingController();
    return Scaffold(
      appBar: AppBar(title: Text("kalkulator")),
      body: Column(
        children: [

          Row(
            children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(10),
                  child: CustomTextfield(
                    txtController: txtAngka1,
                    myHint: "input Angka 1",
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(10),
                  child: CustomTextfield(
                    txtController: txtAngka2,
                    myHint: "input Angka 2",
                  ),
                ),
              ),
            ],
          ),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

          ElevatedButton(
            onPressed: () {
              // panggil method tambah di controller
              int angka1 = int.parse(txtAngka1.text);
              int angka2 = int.parse(txtAngka2.text);
              controller.tambah(angka1, angka2);
            },
            child: Text("Tambah", style: TextStyle(color: const Color.fromARGB(255, 72, 69, 69)),),
          ),

          ElevatedButton(
            onPressed: () {
              // panggil method tambah di controller
              int angka1 = int.parse(txtAngka1.text);
              int angka2 = int.parse(txtAngka2.text);
              controller.kurang(angka1, angka2);
            },
            child: Text("Kurang", style: TextStyle(color: const Color.fromARGB(255, 72, 69, 69)),),
          ),

          ElevatedButton(
            onPressed: () {
              // panggil method tambah di controller
              int angka1 = int.parse(txtAngka1.text);
              int angka2 = int.parse(txtAngka2.text);
              controller.kali(angka1, angka2);
            },
            child: Text("Kali", style: TextStyle(color: const Color.fromARGB(255, 72, 69, 69)),),
          ),

          ElevatedButton(
            onPressed: () {
              // panggil method tambah di controller
              int angka1 = int.parse(txtAngka1.text);
              int angka2 = int.parse(txtAngka2.text);
              controller.bagi(angka1, angka2);
            },
            child: Text("Bagi", style: TextStyle(color: const Color.fromARGB(255, 255, 184, 184)),),
          ),
          ],
        ),
          Obx(
            () => Text(
              controller.hasil.toString(),
              style: TextStyle(fontSize: 30),
            ),
          ),
        ],
      ),
    );
  }
}