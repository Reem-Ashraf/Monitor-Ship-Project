
  import 'package:flutter/material.dart';

Widget buildAppBar(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Builder(
          builder: (context) {
            return IconButton(
              onPressed: () => Scaffold.of(context).openDrawer(),
              icon: const Icon(Icons.menu_outlined),
            );
          },
        ),
        const Text(
          "My Wishlist",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        Stack(
          children: [
            const Icon(Icons.notifications, size: 28),
            Positioned(
              right: 0,
              top: 0,
              child: Container(
                height: 8,
                width: 8,
                decoration: const BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }