import 'package:basics/views/HomeScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyStatelessWidget());
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
