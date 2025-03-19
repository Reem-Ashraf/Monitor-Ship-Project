 import 'package:flutter/material.dart';

Widget textfield(String label, TextEditingController controller, [TextInputType type = TextInputType.text]) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        controller: controller,
        keyboardType: type,
        decoration: InputDecoration(labelText: label, border: const UnderlineInputBorder()),
      ),
    );
  }

