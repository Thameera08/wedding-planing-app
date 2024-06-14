// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class StartpageItem extends StatelessWidget {
  final String title;
  final String imagePath;
  final VoidCallback onTap;

  StartpageItem({
    required this.title,
    required this.imagePath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        color: HexColor('0077B6'),
        elevation: 15,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            //image path
            Container(
              alignment: Alignment.bottomCenter,
              child: Image.asset(
                imagePath,
                width: 70,
                height: 70,
              ),
            ),
            //main text for header
            Padding(
              padding: const EdgeInsets.only(left: 5, top: 5),
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}
