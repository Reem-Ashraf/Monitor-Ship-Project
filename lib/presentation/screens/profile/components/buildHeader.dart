import 'package:flutter/material.dart';

import '../presention/screens/profile.dart';

Widget buildHeader(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => ProfileScreen()));
    },
    child: DrawerHeader(
      child: Row(
        children: [
          CircleAvatar(
              radius: 30, backgroundImage: AssetImage('images/profile.jpg')),
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
