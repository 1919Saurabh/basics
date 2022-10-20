import 'package:basics/views/extensions.dart';
import 'package:flutter/material.dart';

class ExampleScreen extends StatelessWidget {
  const ExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Scale Factor'),
      ),
      body: Center(
        child: Text(
          'Anil Thapa',
          style: TextStyle(
            fontSize: 100.sp,
          ),
        ),
      ),
    );
  }
}
