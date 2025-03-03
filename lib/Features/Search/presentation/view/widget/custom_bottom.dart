import 'package:flutter/material.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({super.key, required this.color, required this.title,});

  final Color color;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      decoration:  BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(22),
      ),
      child: Center(child: Text(title, style: const TextStyle(
          fontSize: 22, fontWeight: FontWeight.w600,color: Colors.white),)),
    );
  }
}
