import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class InstructionsCardPage extends StatelessWidget {
  final String text;

  const InstructionsCardPage({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        alignment: Alignment.center,
        width: 400,
        height: 50,
        decoration: BoxDecoration(
          color: HexColor('#7A7F8D'),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
