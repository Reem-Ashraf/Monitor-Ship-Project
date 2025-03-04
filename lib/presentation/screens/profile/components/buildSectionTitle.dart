 import 'package:flutter/material.dart';

Widget buildSectionTitle(String title) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Text(title,
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey)),
    );
  }