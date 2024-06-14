// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class AdjustableTextField extends StatefulWidget {
  const AdjustableTextField({super.key});

  @override
  _AdjustableTextFieldState createState() => _AdjustableTextFieldState();
}

class _AdjustableTextFieldState extends State<AdjustableTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
      maxLines: 4,
      minLines: 2,
      // Use controller for text input
      // Example validator: validator: (value) => value.isEmpty ? 'Please enter job description' : null,
    );
  }
}
