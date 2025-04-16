import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/cache/cache_helper.dart';
import '../../../../core/utils/app_routes/routes_name.dart';
import '../../auth_screens/login_screen/presentation/cubit/auth_cubit.dart';
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
        ListtileCustom(
            icon: Icons.favorite_border,
            title: 'My Wishlist', //todo: add lacalization
            onTap: () => context.push(RoutesName.myWishlist)),
        const Divider(),
        BlocListener<AuthCubit, AuthState>(
          listener: (context, state) {
            log(state.toString());
            log(CacheHelper.getSecureData(key: 'uid').toString());
          },
          child: ListtileCustom(
              icon: Icons.logout,
              title: 'Log out',
              onTap: () {
                context.read<AuthCubit>().logOut(context);
              }),
        ), //todo: add lacalization
      ]),
    ),
  );
}

class ListtileCustom extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  const ListtileCustom(
      {super.key,
      required this.icon,
      required this.title,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Colors.grey),
      title: Text(title),
      trailing: title == 'My Wishlist'
          ? const Icon(Icons.arrow_forward_ios, size: 16)
          : null,
      onTap: onTap,
    );
  }
}
