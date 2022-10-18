import 'package:flutter/material.dart';

class MyCustomIcon extends StatelessWidget {
  final IconData icon;
  final double size;
  final Color? color;
  const MyCustomIcon(
      {super.key, required this.icon, required this.size, this.color});

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      size: size,
      color: color,
    );
  }
}
