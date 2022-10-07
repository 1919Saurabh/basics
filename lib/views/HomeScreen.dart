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
            onPressed: () {},
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
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Table(
            border: TableBorder.all(),
            children: const [
              TableRow(
                children: [
                  Text('1'),
                ],
              ),
            ],
          );
        },
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
}
