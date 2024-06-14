// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:ccisl/screens/user_type_page.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key}); // Corrected constructor definition

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand, // Make the stack fill the entire screen
        children: [
          // Background Image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/start.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Content Centered in a Column
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 80),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      "Welcome to",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                // SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      "Joduwa.lk",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 55,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                // SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(right: 80),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => UsertypePage(),
                          ),
                        );
                      },
                      child: Text(
                        "Get Started",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            HexColor("#03045E"), // Set button background color
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 400,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
