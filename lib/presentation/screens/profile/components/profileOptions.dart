import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/app_routes/routes_name.dart';
import '../presention/screens/my_wishlist_board.dart';

//todo: change name file from profileOptions to profile_options.dart
//todo: change widget to stateless
//todo: link video https://youtu.be/-yDWT8T7mx8
Widget profileOptions(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 3,
      child: Column(children: [
        listtile(
            Icons.favorite_border,
            'My Wishlist', //todo: add lacalization
            () => context.push(RoutesName.myWishlist)),
        const Divider(),
        listtile(Icons.logout, 'Log out', () {}), //todo: add lacalization
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
