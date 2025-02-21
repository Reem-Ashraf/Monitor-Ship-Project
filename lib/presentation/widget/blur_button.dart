import 'dart:ui';

import 'package:flutter/material.dart';

class BlurButton extends StatelessWidget {
  BlurButton({super.key, required this.text, required this.onTap});
  String text;
  VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30), // Rounded corners
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10), // Blur effect
        child: InkWell(
          onTap: onTap,
          child: Container(
            width: 193, // Set width
            height: 50, // Set height
            alignment: Alignment.center, // Center text
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.2), // Frosted glass effect
              borderRadius: BorderRadius.circular(30),
              border: Border.all(color: Colors.white, width: 1.5),
            ),
            child: Text(
              text,
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
          ),
        ),
      ),
    );
  }
}
