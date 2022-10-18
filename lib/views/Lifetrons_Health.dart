import 'package:basics/widget/Custom_Elevated_Button.dart';
import 'package:basics/widget/Elevated_button.dart';
import 'package:basics/widget/My_custom_Icon.dart';
import 'package:basics/views/extensions.dart';
import 'package:flutter/material.dart';

import '../widget/Bold_Text_Widget.dart';

class LifetronsHealth extends StatelessWidget {
  const LifetronsHealth({super.key});

  @override
  Widget build(BuildContext context) {
    var size, height, width;

    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    print(height);
    print(width);
    print(MediaQuery.of(context).textScaleFactor);
    return Scaffold(
      drawer: const Drawer(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(height / 53.18),
                  side: const BorderSide(
                    color: Color.fromARGB(255, 183, 177, 177),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(height / 39.8855),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          MyCustomIcon(
                            icon: Icons.monitor_weight_outlined,
                            size: height / 19.942,
                          ),
                          SizedBox(
                            width: height / 79.771,
                          ),
                          BoldTextWidget(
                            text: 'Weight Analysis',
                            size: height / 31.9084,
                          ),
                          const Spacer(),
                          MyCustomIcon(
                            icon: Icons.help_outline,
                            size: height / 19.942,
                          ),
                        ],
                      ),
                      Divider(
                        height: height / 39.8855,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              FittedBox(
                                child: Row(
                                  children: [
                                    MyCustomIcon(
                                      icon: Icons.emoji_events_outlined,
                                      size: height / 39.8855,
                                      color: Colors.red,
                                    ),
                                    SizedBox(
                                      width: height / 79.771,
                                    ),
                                    Text(
                                      '0.00',
                                      style: TextStyle(
                                        fontSize: height / 39.8855,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                'Away from target',
                                style: TextStyle(fontSize: height / 53.18),
                              ),
                            ],
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(height / 13.295),
                              side: const BorderSide(
                                color: Color.fromARGB(255, 183, 177, 177),
                              ),
                            ),
                            elevation: 12,
                            margin: EdgeInsets.zero,
                            child: Padding(
                              padding: EdgeInsets.all(height / 39.8855),
                              child: Column(
                                children: [
                                  SizedBox(
                                    width: height / 79.771,
                                  ),
                                  Text(
                                    '0.00',
                                    style: TextStyle(
                                      fontSize: height / 31.9084,
                                    ),
                                  ),
                                  SizedBox(
                                    width: height / 79.771,
                                  ),
                                  Text(
                                    'KG',
                                    style: TextStyle(
                                      fontSize: height / 44.317,
                                    ),
                                  ),
                                  Container(
                                    height: height / 132.95,
                                    width: width / 8.2286,
                                    color: Colors.green,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    '0.00',
                                    style: TextStyle(
                                      fontSize: height / 39.8855,
                                    ),
                                  ),
                                  SizedBox(
                                    width: height / 79.771,
                                  ),
                                  MyCustomIcon(
                                    icon: Icons.emoji_events_outlined,
                                    size: height / 39.8855,
                                    color: Colors.green,
                                  ),
                                ],
                              ),
                              Text(
                                'Ideal target',
                                style: TextStyle(fontSize: height / 53.18),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Divider(
                        height: height / 31.9084,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.notifications,
                            color: Color.fromARGB(255, 252, 157, 15),
                          ),
                          SizedBox(
                            width: height / 79.771,
                          ),
                          Text(
                            'Every step is progress, no matter how \nsmall',
                            style: TextStyle(fontSize: height / 44.317),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(height / 53.18),
                  side: const BorderSide(
                    color: Color.fromARGB(255, 183, 177, 177),
                  ),
                ),
                child: Container(
                  margin: EdgeInsets.symmetric(
                    vertical: height / 26.59,
                    horizontal: width / 20.5715,
                  ),
                  padding: EdgeInsets.all(height / 159.542),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black26,
                    ),
                    borderRadius: BorderRadius.circular(height / 31.9084),
                  ),
                  child: Column(
                    children: [
                      BoldTextWidget(
                        text: 'Add Tracking Device',
                        size: height / 39.8855,
                      ),
                      const Divider(),
                      Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRH_vX-c6eaRETDN0zX6rB_u3ug2oVvdCi2fodzlw7NDg&s',
                        width: width / 8.2286,
                      ),
                      const Text('Google Fit (FREE)'),
                      SizedBox(
                        height: height / 79.771,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shadowColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(height / 79.771),
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: width / 10.2857,
                            vertical: height / 53.18,
                          ),
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
                  borderRadius: BorderRadius.circular(height / 53.18),
                  side: const BorderSide(
                    color: Color.fromARGB(255, 183, 177, 177),
                  ),
                ),
                child: Container(
                  margin: EdgeInsets.symmetric(
                    vertical: height / 79.771,
                    horizontal: width / 20.5715,
                  ),
                  padding: EdgeInsets.all(height / 159.542),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BoldTextWidget(text: 'Water', size: height / 39.8855),
                      Divider(
                        height: height / 39.8855,
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: '0',
                                      style: TextStyle(
                                        fontSize: height / 31.9084,
                                        color: Colors.black,
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' glasses',
                                      style: TextStyle(
                                        fontSize: height / 39.8855,
                                        color: Colors.black,
                                      ),
                                    ),
                                    TextSpan(
                                      text: '\n\n0.00 Liters',
                                      style: TextStyle(
                                        fontSize: height / 39.8855,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          MyCustomIcon(
                            icon: Icons.remove_circle_outline,
                            color: Colors.red,
                            size: height / 26.59,
                          ),
                          MyCustomIcon(
                            icon: Icons.add_circle_outline,
                            color: Colors.green[900],
                            size: height / 26.59,
                          ),
                        ],
                      ),
                      Divider(
                        height: height / 39.8855,
                      ),
                      Text(
                        'You are few glasses away from you target',
                        style: TextStyle(
                          fontSize: height / 44.317,
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
                  borderRadius: BorderRadius.circular(height / 53.18),
                ),
                child: Container(
                  margin: EdgeInsets.symmetric(
                    vertical: height / 79.771,
                    horizontal: width / 39.8855,
                  ),
                  padding: EdgeInsets.all(height / 159.542),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.medical_services_outlined,
                            color: Color.fromARGB(255, 133, 8, 222),
                          ),
                          BoldTextWidget(
                            text: '  Your Medical & Insurance Records',
                            size: height / 39.8855,
                          ),
                        ],
                      ),
                      Divider(
                        height: height / 39.8855,
                      ),
                      Row(
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: '0',
                                  style: TextStyle(
                                    fontSize: height / 31.9084,
                                    color: Colors.black,
                                  ),
                                ),
                                TextSpan(
                                  text: '  records',
                                  style: TextStyle(
                                    fontSize: height / 39.8855,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                          const MyElevatedButton(
                            text: 'View & Add  ',
                            icon: Icons.unarchive,
                          )
                        ],
                      ),
                      Divider(
                        height: height / 39.8855,
                      ),
                      Row(
                        children: [
                          const Icon(Icons.description_outlined),
                          SizedBox(
                            width: width / 20.5715,
                          ),
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                BoldTextWidget(
                                  text:
                                      'All your important records at a single place',
                                  size: height / 49.8568,
                                ),
                                const Text(
                                  'View or share with your Doctors or family when needed',
                                  overflow: TextOverflow.clip,
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(height / 53.18),
                  side: const BorderSide(
                    color: Color.fromARGB(255, 183, 177, 177),
                  ),
                ),
                child: Container(
                  margin: EdgeInsets.symmetric(
                    vertical: height / 79.771,
                    horizontal: width / 41.143,
                  ),
                  padding: EdgeInsets.all(height / 159.542),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.library_books,
                            color: Color.fromARGB(255, 133, 8, 222),
                          ),
                          BoldTextWidget(
                            text: '  Your Health Book',
                            size: height / 39.8855,
                          ),
                        ],
                      ),
                      Divider(
                        height: height / 39.8855,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          CustomElevatedButton(
                            text: 'Blood Sugar',
                            image: 'lib/assets/icons/sugar-blood-level.png',
                          ),
                          CustomElevatedButton(
                            text: 'Blood Sugar',
                            image: 'lib/assets/icons/sugar-blood-level.png',
                          ),
                          CustomElevatedButton(
                            text: 'Waist Hip Ratio',
                            image: 'lib/assets/icons/hips.png',
                          ),
                        ],
                      ),
                      Divider(
                        height: height / 39.8855,
                      ),
                      Row(
                        children: [
                          const Icon(Icons.description_outlined),
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                BoldTextWidget(
                                  text: 'Track Your daily Health changes',
                                  size: height / 49.8568,
                                ),
                                const Text(
                                  'Analyse the changes on the progress made',
                                ),
                              ],
                            ),
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
