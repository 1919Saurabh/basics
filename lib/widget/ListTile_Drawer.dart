import 'package:flutter/material.dart';

class MyListTileDrawer extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color color;
  const MyListTileDrawer(
      {super.key, required this.text, required this.icon, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Color.fromARGB(255, 209, 203, 203)),
        ),
      ),
      child: ListTile(
        leading: Icon(
          icon,
          color: color,
        ),
        title: Text(
          this.text,
          style: const TextStyle(
            fontSize: 20,
            color: Color.fromARGB(255, 133, 8, 222),
          ),
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          color: Color.fromARGB(255, 133, 8, 222),
        ),
      ),
    );
  }
}
