import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:internship/services/auth_services.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

import 'homepage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // _LoginPageState(this.hintText);
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  void handleLogin() async {
    await AuthService().signInWithGoogle();
    // Here signInWithGoogle() is your defined function!
    if (AuthService().signInWithGoogle() != null) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    } else {
      Text("Something Wrong");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
                width: 100,
              ),
              Image.asset(
                'lib/images/logo.jpg',
                width: 150,
                height: 150,
              ),
              const SizedBox(
                height: 25,
              ),
              Text(
                'Hope you\'re doing great',
                style: TextStyle(
                  color: Colors.pink.shade400,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 45,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: TextField(
                  controller: usernameController,
                  obscureText: false,
                  decoration: InputDecoration(
                      hintText: "Email",
                      hintStyle: TextStyle(color: Colors.pink.shade200),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.pink.shade300)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.pink.shade300),
                      ),
                      fillColor: Colors.pink.shade100),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Password",
                      hintStyle: TextStyle(color: Colors.pink.shade200),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.pink.shade300)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.pink.shade300),
                      ),
                      fillColor: Colors.pink.shade100),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.pink.shade200),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Center(
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.pink.shade400, // Background color
                      ),
                      onPressed: () {},
                      child: Text(
                        'Login',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ))),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    Expanded(
                        child: Divider(
                      thickness: 0.5,
                      color: Colors.pink.shade400,
                    )),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        "or continue with",
                        style: TextStyle(color: Colors.pink.shade300),
                      ),
                    ),
                    Expanded(
                        child: Divider(
                      thickness: 0.5,
                      color: Colors.pink.shade400,
                    ))
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () => {
                  // AuthService().signInWithGoogle(),
                  handleLogin(),
                },
                child: Image.asset(
                  'lib/images/google.jpg',
                  width: 85,
                  height: 85,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 92.0, vertical: 15.0),
                child: Row(
                  children: [
                    Text(
                      "Not registered yet? ",
                      style: TextStyle(color: Colors.pink.shade300),
                    ),
                    Text("Register now",
                        style: TextStyle(
                            color: Colors.blue.shade700,
                            fontWeight: FontWeight.bold))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
