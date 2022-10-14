import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final String image;
  const CustomElevatedButton(
      {super.key, required this.text, required this.image});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
      ),
      onPressed: () {},
      child: Row(
        children: [
          Image.asset(
            image,
            width: 20,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            text,
            style: const TextStyle(color: Colors.black, fontSize: 10),
          ),
        ],
      ),
    );
  }
}
