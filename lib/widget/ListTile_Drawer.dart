import 'package:flutter/material.dart';

class MyListTileDrawer extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color color;
  const MyListTileDrawer(
      {super.key, required this.text, required this.icon, required this.color});

  @override
  Widget build(BuildContext context) {
    var size, height, width;

    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
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
        title: Flexible(
          child: Text(
            this.text,
            style: TextStyle(
                color: const Color.fromARGB(255, 133, 8, 222),
                fontSize: height / 44.317),
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
