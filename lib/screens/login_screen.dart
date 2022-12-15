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
      backgroundColor: const Color(0xff181920),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Text(
              "Welcome Back!",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w600),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
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
              child: MyTextField(
                  hintText: "Email", color: const Color(0xff585A60)),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 6),
              child: MyTextField(
                  icon: const Icon(
                    Icons.remove_red_eye_outlined,
                    color: Color(0xff585A60),
                  ),
                  hintText: "Password",
                  color: const Color(0xff585A60)),
            ),
            const Align(
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
            const SizedBox(
              height: 60,
            ),
            RoundedButton(
                ontap: () {}, title: "Sign In", color: const Color(0xff5568FE)),
            const SizedBox(height: 15),
            RichText(
              text: TextSpan(
                text: "Don't have an account ?",
                style: const TextStyle(
                    fontSize: 13,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
                children: [
                  TextSpan(
                      text: ' Sign Up',
                      style: const TextStyle(
                          color: Color(0xff5568FE),
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.pushNamed(context, "/SignUpScreen");
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
