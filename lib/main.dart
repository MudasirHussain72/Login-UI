import 'package:flutter/material.dart';
import 'package:login_ui/screens/first_sceen.dart';
import 'package:login_ui/screens/login_screen.dart';
import 'package:login_ui/screens/signup_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "login ui",
        initialRoute: "/",
        routes: {
          "/": (context) => const FirstScreen(),
          "/LoginScreen": (context) => const LoginScreen(),
          "/SignUpScreen": (context) => const SignUp(),
        });
  }
}
