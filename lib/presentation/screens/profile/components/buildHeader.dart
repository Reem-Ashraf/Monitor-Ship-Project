import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/app_routes/routes_name.dart';

Widget buildHeader(BuildContext context) {
  return GestureDetector(
    onTap: () {
      context.push(RoutesName.profileSetting);
    },
    child: DrawerHeader(
      child: Row(
        children: [
          CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/images/profile.jpg')),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Sunie Pham",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Text("sunieux@gmail.com"),
            ],
          ),
        ],
      ),
    ),
  );
}
