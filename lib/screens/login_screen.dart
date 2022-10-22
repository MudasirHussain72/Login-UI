import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:login_ui/widgets/rounded_button.dart';
import 'package:login_ui/widgets/textfiled.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff181920),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              "Welcome Back!",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w600),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Please sign in to your account",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color(0xff585A60),
                    fontSize: 13,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: MyTextField(hintText: "Email", color: Color(0xff585A60)),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 6),
              child:
                  MyTextField(hintText: "Password", color: Color(0xff585A60)),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Text(
                "Forget Password?",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color(0xff585A60),
                    fontSize: 13,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            RoundedButton(
                ontap: () {}, title: "Sign In", color: Color(0xff5568FE)),
            SizedBox(height: 10),
            RoundedButton(ontap: () {}, title: "Sign In", color: Colors.white),
            SizedBox(
              height: 6,
            ),
            RichText(
              text: TextSpan(
                text: 'Forgot password ? / ',
                style: TextStyle(fontSize: 13, color: Colors.black),
                children: [
                  TextSpan(
                      text: 'Reset Now',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.pushNamed(context, "/ResetPassword");
                        }),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
