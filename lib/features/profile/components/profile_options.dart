import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:easy_localization/easy_localization.dart';
import '../../../../core/utils/app_routes/routes_name.dart';

class ProfileOptions extends StatelessWidget {
  const ProfileOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 3,
        child: Column(
          children: [
            _listTile(
              Icons.favorite_border,
              'my_wishlist'.tr(),
              () => context.push(RoutesName.myWishlist),
            ),
            const Divider(),
            _listTile(Icons.logout, 'log_out'.tr(), () {}),
          ],
        ),
      ),
    );
  }

  Widget _listTile(IconData icon, String title, VoidCallback onTap) {
    return ListTile(
      leading: Icon(icon, color: Colors.grey),
      title: Text(title),
      trailing: title == 'my_wishlist'.tr()
          ? const Icon(Icons.arrow_forward_ios, size: 16)
          : null,
      onTap: onTap,
    );
  }
}
