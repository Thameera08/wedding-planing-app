// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ccisl/components/start_menu_card.dart';
import 'package:ccisl/screens/login_page.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class UsertypePage extends StatefulWidget {
  const UsertypePage({super.key});

  @override
  State<UsertypePage> createState() => _UsertypePageState();
}

class _UsertypePageState extends State<UsertypePage> {
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
              width: 450,
              child: Image.asset(
                'assets/images/type.png',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Select user type",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 16.0,
                padding: EdgeInsets.all(16.0),
                children: <Widget>[
                  StartpageItem(
                    title: 'Couples',
                    imagePath: 'assets/images/item1.png',
                    onTap: () {},
                  ),
                  
                  StartpageItem(
                    title: 'Admin',
                    imagePath: 'assets/images/item3.png',
                    onTap: () {},
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: HexColor('03045E'),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                minimumSize: Size(200, 50),
              ),
              child: Text(
                'CONTINUE',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
