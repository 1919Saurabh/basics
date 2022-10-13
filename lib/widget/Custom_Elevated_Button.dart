import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  const CustomElevatedButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
      ),
      onPressed: () {},
      child: Row(
        children: const [
          Text(
            'BP Monitor',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
