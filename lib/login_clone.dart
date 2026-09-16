import 'package:flutter/material.dart';

class LoginClone extends StatelessWidget {
  const LoginClone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              
              // Logo
              const Text(
                'Instagram',
                style: TextStyle(fontSize: 36, fontFamily: 'Cursive', fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),

              // Input Fields
              const TextField(
                decoration: InputDecoration(
                  hintText: 'Username or email',
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                ),
              ),
              const SizedBox(height: 10),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                ),
              ),
              const SizedBox(height: 15),

              // Tombol Login
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  onPressed: () {},
                  child: const Text('Log In', style: TextStyle(color: Colors.white)),
                ),
              ),
              const SizedBox(height: 20),

              // Login FB & Lupa Password
              TextButton(
                onPressed: () {},
                child: const Text('Log in with Facebook'),
              ),

              const Spacer(),

              // Footer Sign Up
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account? "),
                  GestureDetector(
                    onTap: () {},
                    child: const Text('Sign up', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue)),
                  ),
                ],
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}