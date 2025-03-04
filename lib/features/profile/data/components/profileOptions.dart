import 'package:flutter/material.dart';
import 'package:hello_world/screens/my_wishlist_board.dart';

Widget profileOptions(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 3,
      child: Column(children: [
        listtile(
            Icons.favorite_border,
            'My Wishlist',
            () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => WishlistScreen()))),
        const Divider(),
        listtile(Icons.logout, 'Log out', () {}),
      ]),
    ),
  );
}

  Widget listtile(IconData icon, String title, VoidCallback onTap) {
    return ListTile(
      leading: Icon(icon, color: Colors.grey),
      title: Text(title),
      trailing: title == 'My Wishlist'
          ? const Icon(Icons.arrow_forward_ios, size: 16)
          : null,
      onTap: onTap,
    );
  }