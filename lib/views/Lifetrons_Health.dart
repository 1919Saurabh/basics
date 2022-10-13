import 'package:basics/widget/Custom_Elevated_Button.dart';
import 'package:basics/widget/Elevated_button.dart';
import 'package:flutter/material.dart';

import '../widget/Bold_Text_Widget.dart';

class LifetronsHealth extends StatelessWidget {
  const LifetronsHealth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 133, 8, 222),
        title: const Text('Lifetrons Health'),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(5),
          child: Column(
            children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                  side: const BorderSide(
                    color: Color.fromARGB(255, 183, 177, 177),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.monitor_weight_outlined,
                            size: 30,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          BoldTextWidget(
                            text: 'Weight Analysis',
                            size: 20.0,
                          ),
                          Spacer(),
                          Icon(
                            Icons.help_outline,
                            size: 30,
                            color: Color.fromARGB(255, 9, 126, 13),
                          ),
                        ],
                      ),
                      const Divider(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: const [
                                  Icon(
                                    Icons.emoji_events_outlined,
                                    size: 18,
                                    color: Colors.red,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    '0.00',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ],
                              ),
                              const Text(
                                'Away from target',
                                style: TextStyle(fontSize: 15),
                              ),
                            ],
                          ),
                          Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            width: 80,
                            height: 80,
                            child: Column(
                              children: const [
                                Text(
                                  '0.00',
                                  style: TextStyle(
                                    fontSize: 25,
                                  ),
                                ),
                                Text(
                                  'KG',
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              Row(
                                children: const [
                                  Text(
                                    '0.00',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    Icons.emoji_events_outlined,
                                    size: 18,
                                    color: Colors.green,
                                  ),
                                ],
                              ),
                              const Text(
                                'Ideal target',
                                style: TextStyle(fontSize: 15),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Divider(
                        height: 25,
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.notifications,
                            color: Color.fromARGB(255, 252, 157, 15),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Every step is progress, no matter how \nsmall',
                            style: TextStyle(fontSize: 17),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                  side: const BorderSide(
                    color: Color.fromARGB(255, 183, 177, 177),
                  ),
                ),
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black26,
                      ),
                      borderRadius: BorderRadius.circular(25)),
                  child: Column(
                    children: [
                      const BoldTextWidget(
                        text: 'Add Tracking Device',
                        size: 20.0,
                      ),
                      const Divider(),
                      Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRH_vX-c6eaRETDN0zX6rB_u3ug2oVvdCi2fodzlw7NDg&s',
                        width: 50,
                      ),
                      const Text('Google Fit (FREE)'),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shadowColor: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 40, vertical: 15),
                          backgroundColor:
                              const Color.fromARGB(255, 133, 8, 222),
                        ),
                        onPressed: () {},
                        child: const Text('Add'),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                  side: const BorderSide(
                    color: Color.fromARGB(255, 183, 177, 177),
                  ),
                ),
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  padding: const EdgeInsets.all(5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const BoldTextWidget(text: 'Water', size: 20.0),
                      const Divider(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              RichText(
                                text: const TextSpan(
                                  children: [
                                    TextSpan(
                                      text: '1',
                                      style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.black,
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' glasses',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                      ),
                                    ),
                                    TextSpan(
                                      text: '\n\n0.24 Liters',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          const Icon(
                            Icons.remove_circle_outline,
                            color: Colors.red,
                            size: 30,
                          ),
                          Icon(
                            Icons.add_circle_outline,
                            color: Colors.green[900],
                            size: 30,
                          ),
                        ],
                      ),
                      const Divider(
                        height: 20,
                      ),
                      const Text(
                        'You are few glasses away from you target',
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                    color: Color.fromARGB(255, 183, 177, 177),
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  padding: const EdgeInsets.all(5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.medical_services_outlined,
                            color: Color.fromARGB(255, 133, 8, 222),
                          ),
                          BoldTextWidget(
                              text: '  Your Medical & Insurance Records',
                              size: 20.0),
                        ],
                      ),
                      const Divider(
                        height: 20,
                      ),
                      Row(
                        children: [
                          RichText(
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                  text: '0',
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.black,
                                  ),
                                ),
                                TextSpan(
                                  text: '  records',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                          const MyElevatedButton(
                              text: 'View & Add  ', icon: Icons.unarchive)
                        ],
                      ),
                      const Divider(
                        height: 20,
                      ),
                      Row(
                        children: [
                          const Icon(Icons.description_outlined),
                          Column(
                            children: const [
                              BoldTextWidget(
                                text:
                                    '  All your important records at a single place',
                                size: 16.0,
                              ),
                              Text(
                                  'View or share with your Doctors or family when\nneeded')
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                  side: const BorderSide(
                    color: Color.fromARGB(255, 183, 177, 177),
                  ),
                ),
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  padding: const EdgeInsets.all(5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.library_books,
                            color: Color.fromARGB(255, 133, 8, 222),
                          ),
                          BoldTextWidget(
                              text: '  Your Health Book', size: 20.0),
                        ],
                      ),
                      const Divider(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          CustomElevatedButton(text: 'BP Monitor'),
                          CustomElevatedButton(text: 'Blood Sugar'),
                          CustomElevatedButton(text: 'Waist Hip Ratio'),
                        ],
                      ),
                      const Divider(
                        height: 20,
                      ),
                      Row(
                        children: [
                          const Icon(Icons.description_outlined),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              BoldTextWidget(
                                text: '   Track Your daily Health changes',
                                size: 16.0,
                              ),
                              Text(
                                  '   Analyse the changes on the progress made'),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
