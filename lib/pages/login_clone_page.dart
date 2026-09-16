import 'package:flutter/material.dart';
import 'package:flutter_application_2/components/custom_textfield.dart';

class LoginClonePage extends StatelessWidget {
  const LoginClonePage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController txtUsername = TextEditingController();
    TextEditingController txtPassword = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),

              // Logo Instagram
              const Text(
                'Instagram',
                style: TextStyle(
                  fontSize: 45,
                  fontFamily: 'Cursive',
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),

              // Reusable TextField Username
              CustomTextfield(
                txtController: txtUsername,
                myHint: "Phone number, username, or email",
              ),
              const SizedBox(height: 12),

              // Reusable TextField Password
              CustomTextfield(
                txtController: txtPassword,
                myHint: "Password",
              ),

              // Lupa Password
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: null,
                  child: const Text(
                    'Forgot password?',
                    style: TextStyle(color: Color(0xFF3797EF), fontSize: 12),
                  ),
                ),
              ),
              const SizedBox(height: 10),

              // Button Login Biru (Tanpa Fungsi)
              SizedBox(
                width: double.infinity,
                height: 44,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF3797EF), // Warna biru Instagram
                    disabledBackgroundColor: const Color(0xFF3797EF), // Tetap biru meskipun onPressed null
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  onPressed: null, // Tanpa fungsi
                  child: const Text(
                    'Log In',
                    style: TextStyle(
                      color: Colors.white, // Teks warna putih
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              const Spacer(),

              // Footer Sign Up
              const Divider(thickness: 1, color: Color(0xFFEEEEEE)),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Don't have an account? ",
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                    Text(
                      'Sign up.',
                      style: TextStyle(
                        color: Color(0xFF3797EF),
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
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
  }
}