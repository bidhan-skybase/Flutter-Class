import 'package:demoapp/views/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(title: Text("Login Page")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: Column(
            children: [
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: "Email",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2.0, color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2.0, color: Colors.black),
                  ),
                ),
              ),
              SizedBox(height: 24),
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Password",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2.0, color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2.0, color: Colors.black),
                  ),
                ),
              ),
              SizedBox(height: 56),
              InkWell(
                onTap: () {
                  if (emailController.text == "bidhan@gmail.com" &&
                      passwordController.text == "12345678") {
                    print("Logged in successfully");
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder:
                            (context) =>
                                HomePage(email: emailController.text),
                      ),
                    );
                  } else {
                    print("Couldn't login");
                  }
                },
                child: Container(
                  height: 48,
                  width: 500,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
