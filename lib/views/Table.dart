// import 'package:flutter/material.dart';

// class Table2 extends StatelessWidget {
//   const Table2({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Table'),
//         centerTitle: true,
//       ),
//       body: Table(
//         border: TableBorder.symmetric(
//           outside: const BorderSide(),
//           inside: const BorderSide(),
//         ),
//         children: List.generate(
//           10,
//           (rowindex) {
//             return TableRow(
//               children: List.generate(
//                 9,
//                 (cindex) {
//                   return Center(
//                     child: Text(
//                       ((rowindex + 1) * (cindex + 1 + 1)).toString(),
//                     ),
//                   );
//                 },
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class Table2 extends StatelessWidget {
  const Table2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Table'),
        centerTitle: true,
      ),
      body: Table(
        border: TableBorder.symmetric(
          outside: const BorderSide(),
          inside: const BorderSide(),
        ),
        children: List.generate(
          10,
          (rowindex) {
            return TableRow(
              children: List.generate(
                10,
                (cindex) {
                  final ans = (10 * cindex) + rowindex + 1;
                  if (ans == 1) {
                    return const Text('');
                  }
                  for (int i = 2; i <= ans / 2; i++) {
                    if (ans % i == 0) {
                      return const Text('');
                    }
                  }
                  return Center(
                    child: Text(
                      (ans).toString(),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
