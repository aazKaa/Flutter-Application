import 'package:flutter/material.dart';
import 'package:flutter_application_2/components/custom_textfield.dart';
import 'package:flutter_application_2/routes.dart';
import 'package:get/get.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController txtNama = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        title: const Text("Registration Page"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "Nama",
              style: TextStyle(fontSize: 14, color: Colors.blue),
            ),
            const SizedBox(height: 8),
            CustomTextfield(txtController: txtNama, myHint: "input name"),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                // get to untuk pindah
                // argument untuk kirim data
                // get off
                Get.toNamed(
                  Routes.confirm_registration,
                  arguments: {
                    'name': txtNama.text.toString(),
                    'jenis_kelamin': "laki laki", // dari widget kalian,
                    // dll
                  },
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 14),
              ),
              child: const Text("Send"),
            ),
          ],
        ),
      ),
    );
  }
}