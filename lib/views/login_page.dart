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
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Column(
            children: [
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: "Email",
                  label: Text("Email address"),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 10.0, color: Colors.blue),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: Colors.red),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: Colors.green),
                  ),
                ),
              ),

              SizedBox(
                height: 20,
              ),
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Password",
                  label: Text("Password field"),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 10.0, color: Colors.blue),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: Colors.red),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: Colors.green),
                  ),
                ),
              ),

              ElevatedButton(
                onPressed: () {
                  if(emailController.text=="bidhan@gmail.com"){
                    print("Logged in successfully");
                  }else{
                    print("couldn't login");
                  }
                  print(emailController.text);
                },
                child: Text("Print"),
              ),
              ElevatedButton(
                onPressed: () {
                  emailController.clear();
                },
                child: Text("Clear"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
