import 'package:flutter/cupertino.dart';

class BoldTextWidget extends StatelessWidget {
  final String text;
  final double size;
  const BoldTextWidget({super.key, required this.text, required this.size});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        color: const Color.fromARGB(255, 133, 8, 222),
      ),
    );
  }
}
