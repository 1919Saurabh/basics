import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Basics extends StatelessWidget {
  const Basics({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    print(height);
    print(height / 90);
    print(height / 12.16);
    print(width * 0.05);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Media Query Practice'),
      ),
      body: Row(
        children: [
          // Container(
          //   color: Colors.red,
          //   height: height,
          //   width: width * 0.05,
          // ),
          Container(
            color: Colors.blue,
            height: height,
            width: width / 1.9984,
          ),
          Text(
            'Saurabh',
            style: TextStyle(fontSize: width / 13.7142),
          )
        ],
      ),
    );
  }
}
