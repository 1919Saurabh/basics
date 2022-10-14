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
    return Drawer(
      child: ListView(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.zero,
        children: [
          Container(
            height: 220,
            child: DrawerHeader(
              // decoration: BoxDecoration(color: Colors.blue),
              child: Column(
                children: const [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 60,
                    child: Icon(
                      Icons.person,
                      size: 100,
                      color: Color.fromARGB(255, 114, 110, 110),
                    ),
                  ),
                  Text(
                    'Saurabh Chachere',
                    style: TextStyle(fontSize: 25),
                  ),
                ],
              ),
            ),
          ),
          const MyListTileDrawer(
            text: 'My Acccount',
            icon: Icons.arrow_forward_ios,
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
          const SizedBox(
            height: 100,
          ),
          Column(
            children: [
              const BoldTextWidget(
                  text: 'For any Feedback or Questions', size: 20.0),
              const Text(
                'Please write to',
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 133, 8, 222),
                  decoration: TextDecoration.underline,
                ),
              ),
              const Text(
                'support@lifetrons.in',
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 133, 8, 222),
                  decoration: TextDecoration.underline,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'lib/assets/icons/facebook.png',
                    width: 35,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    'lib/assets/icons/instagram.png',
                    width: 35,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    'lib/assets/icons/twitter.png',
                    width: 35,
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const BoldTextWidget(
                  text: 'App Version : 2.7.4 (386)', size: 20.0),
            ],
          ),
        ],
      ),
    );
  }
}
