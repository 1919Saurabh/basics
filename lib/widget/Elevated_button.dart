import 'package:flutter/material.dart';

class MyElevatedButton extends StatelessWidget {
  final String text;
  final IconData? icon;
  const MyElevatedButton({super.key, required this.text, this.icon});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shadowColor: Colors.black,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        backgroundColor: const Color.fromARGB(255, 133, 8, 222),
      ),
      onPressed: () {},
      child: Row(
        children: [
          Text(text),
          // ignore: unnecessary_null_comparison
          Icon(icon ?? null),
        ],
      ),
    );
  }
}
