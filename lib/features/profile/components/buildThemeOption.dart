
  import 'package:flutter/material.dart';

Widget buildThemeOption(IconData icon, String label, bool isActive) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          Icon(icon, color: isActive ? Colors.black : Colors.grey),
          SizedBox(width: 5),
          Text(label,
              style: TextStyle(color: isActive ? Colors.black : Colors.grey)),
        ],
      ),
    );
  }

