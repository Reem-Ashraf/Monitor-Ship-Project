import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/app_routes/routes_name.dart';
//todo: change name file from profileHeader to profile_header.dart
//todo: change widget to stateless 
//todo: link video https://youtu.be/-yDWT8T7mx8
Widget profileHeader(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/images/profile.jpg')), //Todo:asset image path not found
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Sunie Pham', 
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  Text('sunieux@gmail.com',
                      style: TextStyle(fontSize: 14, color: Colors.grey)),
                ],
              ),
            ],
          ),
          IconButton(
            onPressed: () => context.push(RoutesName.profileSetting),
            icon: const Icon(Icons.settings, size: 24),
          )
        ],
      ),
    );
  }
