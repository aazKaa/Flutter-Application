import 'package:flutter/material.dart';
import 'package:flutter_application_2/controller/login_controller.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        title: Text("Login Api"),
        backgroundColor: Color.fromARGB(255, 255, 179, 72),
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: controller.txtUSername,
              decoration: InputDecoration(
                label: Text("Input Username"),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            TextField(
              controller: controller.txtPassword,
              decoration: InputDecoration(
                label: Text("Input Password"),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            Obx(
              () =>
                controller.isLoading.value
                    ? Center(child: CircularProgressIndicator())
                    : OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 255, 149, 0),
                          foregroundColor: Colors.white,
                        ),
                        onPressed: () {
                          controller.login();
                        },
                        child: Text("Login"),
                      ),
              ),
          ],
        ),
      ),
    );
  }
}
