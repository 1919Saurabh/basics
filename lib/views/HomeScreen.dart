import 'package:basics/views/Bottom_Navigation_bar_Screen.dart';
import 'package:basics/views/Form_Screen.dart';
import 'package:basics/views/Lifetrons_Health.dart';
// import 'package:basics/views/extensions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:basics/views/tables.dart';
import 'package:basics/widget/MediaQuery.dart';
import 'package:flutter/material.dart';

import 'mediaQuery.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    MyMediaQuery.init(context: context);
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        title: Text(
          'Home',
          style: TextStyle(fontSize: 20.h),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            splashColor: Colors.transparent,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TablesScreen(),
                ),
              );
            },
            icon: const Icon(Icons.phone),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            width: double.infinity,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const FormScreen(),
                ),
              );
            },
            child: const Text('Form'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LifetronsHealth(),
                ),
              );
            },
            child: const Text('Lifetrons Health'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Basics(),
                ),
              );
            },
            child: const Text('Basics'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        splashColor: Colors.transparent,
        backgroundColor: Colors.red,
        onPressed: () {},
        icon: const Icon(
          Icons.add,
          color: Colors.black,
        ),
        label: const Text('Add'),
      ),
      persistentFooterButtons: [
        ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              splashFactory: NoSplash.splashFactory),
          icon: const Icon(
            Icons.add,
            color: Colors.black,
          ),
          onPressed: () {},
          label: const Text('Add'),
        ),
      ],
    );
  }

  Column newColumn({required int num}) {
    return Column(
      children: List.generate(
        10,
        (index) {
          final int count = index + num;
          return Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blueAccent),
            ),
            padding: const EdgeInsets.all(5.0),
            child: Text(count.toString()),
          );
        },
      ),
    );
  }
}
