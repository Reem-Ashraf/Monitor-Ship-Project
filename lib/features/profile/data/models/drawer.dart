import 'package:flutter/material.dart';


class CustomDrawer extends StatelessWidget {
  final bool isDarkMode;
  final VoidCallback toggleTheme;

  const CustomDrawer({
    Key? key,
    required this.isDarkMode,
    required this.toggleTheme,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()));
            },
            child: DrawerHeader(
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('images/profile.jpg'),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Sunie Pham",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      Text("sunieux@gmail.com"),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text("Other",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey)),
            ),
          ),
          SizedBox(height: 10),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Setting"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SettingsScreen()));
            },
          ),
          ListTile(
            leading: Icon(Icons.support),
            title: Text("Support"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text("About us"),
            onTap: () {},
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30.0, 80, 0, 50),
            child: GestureDetector(
              onTap: toggleTheme,
              child: Container(
                width: 240,
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: Colors.grey),
                ),
                child: Stack(
                  children: [
                    AnimatedAlign(
                      duration: Duration(milliseconds: 200),
                      alignment: isDarkMode
                          ? Alignment.centerRight
                          : Alignment.centerLeft,
                      child: Container(
                        width: 120,
                        height: 45,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Row(
                            children: [
                              Icon(Icons.wb_sunny,
                                  color:
                                      isDarkMode ? Colors.grey : Colors.black),
                              SizedBox(width: 5),
                              Align(
                                alignment: Alignment.center,
                                child: Text("Light",
                                    style: TextStyle(
                                        color: isDarkMode
                                            ? Colors.grey
                                            : Colors.black)),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Row(
                            children: [
                              Icon(Icons.nightlight_round,
                                  color:
                                      isDarkMode ? Colors.black : Colors.grey),
                              SizedBox(width: 5),
                              Text("Dark",
                                  style: TextStyle(
                                      color: isDarkMode
                                          ? Colors.black
                                          : Colors.grey)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
