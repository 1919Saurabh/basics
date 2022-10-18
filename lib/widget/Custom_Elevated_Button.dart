import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final String image;
  const CustomElevatedButton(
      {super.key, required this.text, required this.image});

  @override
  Widget build(BuildContext context) {
    var size, height, width;

    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
      ),
      onPressed: () {},
      child: Row(
        children: [
          Image.asset(
            image,
            width: width / 20.5715,
          ),
          SizedBox(
            width: width / 82.286,
          ),
          Text(
            text,
            style: TextStyle(
              color: Colors.black,
              fontSize: height / 79.771,
            ),
          ),
        ],
      ),
    );
  }
}
