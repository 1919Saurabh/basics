import 'package:basics/widget/Bold_Text_Widget.dart';
import 'package:basics/widget/ListTile_Drawer.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    var size, height, width;

    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Drawer(
      child: ListView(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.zero,
        children: [
          Container(
            height: height / 3.6259,
            child: DrawerHeader(
              // decoration: BoxDecoration(color: Colors.blue),
              child: Column(
                children: [
                  Flexible(
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: height / 13.295,
                      child: Icon(
                        Icons.person,
                        size: height / 7.9771,
                        color: const Color.fromARGB(255, 114, 110, 110),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height / 39.55,
                  ),
                  Text(
                    'Saurabh Chachere',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ],
              ),
            ),
          ),
          const MyListTileDrawer(
            text: 'My Acccount',
            icon: Icons.person,
            color: Color.fromARGB(255, 133, 8, 222),
          ),
          const MyListTileDrawer(
            text: 'My Profile',
            icon: Icons.edit,
            color: Colors.red,
          ),
          const MyListTileDrawer(
            text: 'Child Care',
            icon: Icons.child_care,
            color: Color.fromARGB(255, 133, 8, 222),
          ),
          const MyListTileDrawer(
            text: 'Devices & Integration',
            icon: Icons.tv,
            color: Colors.red,
          ),
          const MyListTileDrawer(
            text: 'How to Videos',
            icon: Icons.smart_display,
            color: Color.fromARGB(255, 133, 8, 222),
          ),
          const MyListTileDrawer(
            text: 'Settings',
            icon: Icons.settings,
            color: Colors.red,
          ),
          const MyListTileDrawer(
            text: 'FAQ',
            icon: Icons.forum,
            color: Color.fromARGB(255, 133, 8, 222),
          ),
          const MyListTileDrawer(
            text: 'Logout',
            icon: Icons.exit_to_app,
            color: Colors.red,
          ),
          SizedBox(
            height: height / 7.9771,
          ),
          Column(
            children: [
              BoldTextWidget(
                text: 'For any Feedback or Questions',
                size: height / 53.18,
              ),
              Text(
                'Please write to',
                style: TextStyle(
                  fontSize: height / 53.18,
                  color: const Color.fromARGB(255, 133, 8, 222),
                  decoration: TextDecoration.underline,
                ),
              ),
              Text(
                'support@lifetrons.in',
                style: TextStyle(
                  fontSize: height / 53.18,
                  color: const Color.fromARGB(255, 133, 8, 222),
                  decoration: TextDecoration.underline,
                ),
              ),
              SizedBox(
                height: height / 53.18,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'lib/assets/icons/facebook.png',
                    width: width / 11.755,
                  ),
                  SizedBox(
                    width: height / 79.771,
                  ),
                  Image.asset(
                    'lib/assets/icons/instagram.png',
                    width: width / 11.755,
                  ),
                  SizedBox(
                    width: height / 79.771,
                  ),
                  Image.asset(
                    'lib/assets/icons/twitter.png',
                    width: width / 11.755,
                  ),
                ],
              ),
              SizedBox(
                height: height / 53.18,
              ),
              BoldTextWidget(
                text: 'App Version : 2.7.4 (386)',
                size: height / 53.18,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
