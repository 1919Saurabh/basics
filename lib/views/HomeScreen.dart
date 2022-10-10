import 'package:basics/views/tables.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        title: const Text('Home Page'),
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
      // body: Row(
      //   children: [
      //     Container(
      //       child: ListView.builder(
      //         itemCount: 100,
      //         itemBuilder: (context, index) {
      //           int count = index + 1;
      //           return Text(
      //             count.toString(),
      //           );
      //         },
      //       ),
      //     ),
      //   ],
      // ),
      // body: Column(
      //   children: [
      //     Container(
      //       padding: const EdgeInsets.all(20.0),
      //       child: Table(
      //         border: TableBorder.all(color: Colors.black),
      //         children: [
      //           TableRow(
      //             children: List.generate(10, (index) {
      //               final int count = index + 1;
      //               return Text(
      //                 count.toString(),
      //               );
      //             }),
      //           ),
      //           TableRow(
      //             children: List.generate(10, (index) {
      //               final int count = index + 11;
      //               return Text(
      //                 count.toString(),
      //               );
      //             }),
      //           ),
      //           TableRow(
      //             children: List.generate(10, (index) {
      //               int count = index + 21;
      //               return Text(
      //                 count.toString(),
      //               );
      //             }),
      //           ),
      //           TableRow(
      //             children: List.generate(10, (index) {
      //               int count = index + 31;
      //               return Text(
      //                 count.toString(),
      //               );
      //             }),
      //           ),
      //           TableRow(
      //             children: List.generate(10, (index) {
      //               int count = index + 41;
      //               return Text(
      //                 count.toString(),
      //               );
      //             }),
      //           ),
      //           TableRow(
      //             children: List.generate(10, (index) {
      //               int count = index + 51;
      //               return Text(
      //                 count.toString(),
      //               );
      //             }),
      //           ),
      //           TableRow(
      //             children: List.generate(10, (index) {
      //               int count = index + 61;
      //               return Text(
      //                 count.toString(),
      //               );
      //             }),
      //           ),
      //           TableRow(
      //             children: List.generate(10, (index) {
      //               int count = index + 71;
      //               return Text(
      //                 count.toString(),
      //               );
      //             }),
      //           ),
      //           TableRow(
      //             children: List.generate(10, (index) {
      //               int count = index + 81;
      //               return Text(
      //                 count.toString(),
      //               );
      //             }),
      //           ),
      //           TableRow(
      //             children: List.generate(10, (index) {
      //               int count = index + 91;
      //               return Text(
      //                 count.toString(),
      //               );
      //             }),
      //           ),
      //         ],
      //       ),
      //     )
      //   ],
      // ),
      body: Container(
        child: Row(
          children: [
            newColumn(num: 1),
            newColumn(num: 11),
            newColumn(num: 21),
            newColumn(num: 31),
            newColumn(num: 41),
            newColumn(num: 51),
            newColumn(num: 61),
            newColumn(num: 71),
            newColumn(num: 81),
            newColumn(num: 91),
          ],
        ),
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
