// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

Widget buildSearchBar(String labelText, onChanged) {
  return Padding(
    padding: const EdgeInsets.only(
      left: 30,
      right: 30,
    ),
    child: Container(
      width: 400,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search',
          prefixIcon: Icon(Icons.search_outlined),
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
        ),
        onChanged: (value) {
          // Implement your search functionality here
        },
      ),
    ),
  );
}
