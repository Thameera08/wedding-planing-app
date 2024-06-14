// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_new

import 'package:ccisl/components/toggle.dart';
import 'package:ccisl/screens/signin_page.dart';
import 'package:ccisl/widgets/navbar.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            SizedBox(
              width: 250,
              child: Image.asset(
                'assets/images/type.png',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'LogIn',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: Material(
                elevation: 4,
                borderRadius: BorderRadius.circular(9),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.email,
                      color: HexColor('#03045E'),
                    ),
                    hintText: 'Email', // Placeholder text
                    border: InputBorder.none,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(9),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: Material(
                elevation: 4,
                borderRadius: BorderRadius.circular(9),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock,
                      color: HexColor('#03045E'),
                    ),
                    suffixIcon: Icon(
                      Icons.visibility,
                    ),
                    hintText: 'Password',
                    border: InputBorder.none,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(9),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 40,
                  right: 40,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        ToggleWidget(),
                        Text('Remember Me'),
                        Spacer(),
                        Text('Forgot Password?'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => NavigationPage(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: HexColor('#03045E'),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                minimumSize: Size(200, 50),
              ),
              child: Text(
                'LOGIN',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text("      OR\n"
                "Log in with"),
          
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 100, left: 100),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 30,
                          child: Image.asset('assets/icons/google.png'),
                        ),
                        Spacer(),
                        SizedBox(
                          width: 30,
                          child: Image.asset('assets/icons/apple.png'),
                        ),
                        Spacer(),
                        SizedBox(
                          width: 30,
                          child: Image.asset('assets/icons/facebook.png'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Don’t have an account? ',
                    style: TextStyle(color: Colors.black),
                  ),
                  TextSpan(
                    text: 'Register now',
                    style: TextStyle(color: HexColor('#03045E')),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => SigninPage(),
                          ),
                        );
                      },
                  ),
                ],
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
