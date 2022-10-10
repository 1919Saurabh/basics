import 'package:flutter/material.dart';

class TablesScreen extends StatelessWidget {
  const TablesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tables'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(75),
        child: Row(
          children: [
            newColumn(),
          ],
        ),
      ),
    );
  }

  Column newColumn() {
    return Column(
      children: List.generate(
        10,
        (index) {
          const int num = 2;
          final int tb = index + 1;
          return Container(
            padding: const EdgeInsets.all(5.0),
            child: Text('${num * tb}'),
          );
        },
      ),
    );
  }
}
