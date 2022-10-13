import 'package:basics/widget/Phone_number_Text_Field.dart';

import 'package:flutter/material.dart';

import '../widget/Text_Field_For_DOB.dart';
import '../widget/Text_Form_Field.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  //picking height
  // final List<String> _heightInFeet = [
  //   '1',
  //   '2',
  //   '3',
  //   '4',
  //   '5',
  //   '6',
  //   '7',
  //   '8',
  //   '9',
  //   '10'
  // ];

  // final List<String> _heightInCm = [
  //   '1',
  //   '2',
  //   '3',
  //   '4',
  //   '5',
  //   '6',
  //   '7',
  //   '8',
  //   '9',
  //   '10'
  // ];

  String? dropdownValue;

  // String? _selectedheightInFeet;
  // String? _selectedheightInCm;
  final _formKey = GlobalKey<FormState>();

  bool selectedCm = false;
  // final List<bool> _selectedIndex = <bool>[true, false];

  TextEditingController dateController = TextEditingController();

  TextEditingController heightController = TextEditingController();

  String gender = 'none';
  var _firstPress = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Form'),
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                TextFormFieldForFullName(
                  labelText: 'First Name',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter First name!';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormFieldForFullName(
                  labelText: 'Last Name',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter last name!';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Gender',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                //Gender
                FormField(
                  builder: (FormFieldState<bool> state) {
                    return Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          state.hasError
                              ? Text(
                                  state.errorText!,
                                  style: const TextStyle(color: Colors.red),
                                )
                              : Container(),
                          Row(
                            children: [
                              Flexible(
                                fit: FlexFit.loose,
                                child: RadioListTile(
                                  contentPadding: const EdgeInsets.all(0),
                                  title: const Text('Male'),
                                  value: 'male',
                                  groupValue: gender,
                                  onChanged: (value) {
                                    setState(() {
                                      gender = value!;
                                    });
                                  },
                                ),
                              ),
                              Flexible(
                                fit: FlexFit.loose,
                                child: RadioListTile(
                                  contentPadding: const EdgeInsets.all(0),
                                  title: const Text('Female'),
                                  value: 'female',
                                  groupValue: gender,
                                  onChanged: (value) {
                                    setState(() {
                                      gender = value!;
                                    });
                                  },
                                ),
                              ),
                              Flexible(
                                fit: FlexFit.loose,
                                child: RadioListTile(
                                  contentPadding: const EdgeInsets.all(0),
                                  title: const Text('other'),
                                  value: 'other',
                                  groupValue: gender,
                                  onChanged: (value) {
                                    setState(() {
                                      gender = value!;
                                    });
                                  },
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    );
                  },
                  validator: (value) {
                    if (value != true) {
                      return 'Please Select Gender';
                    }
                    return null;
                  },
                ),

                // Date of Birth
                const TextFieldForDOB(),
                const SizedBox(
                  height: 15,
                ),
                // Height
                const Text(
                  'Height',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                // Toggle Button Start
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ToggleButtons(
                      children: const [
                        Text('Feet'),
                        Text('CM'),
                      ],
                      isSelected: [!selectedCm, selectedCm],
                      selectedBorderColor: Colors.blue[700],
                      selectedColor: Colors.black,
                      fillColor: Colors.blue[400],
                      color: Colors.blue[900],
                      onPressed: (index) {
                        setState(
                          () {
                            if (index == 0) {
                              if (selectedCm) {
                                if (heightController.text.isNotEmpty) {
                                  final double ftc = double.parse(
                                      heightController.text.trim());
                                  final double ftca = ftc * 30.48;
                                  heightController.text = ftca.toString();
                                }
                              }
                              selectedCm = false;
                            } else if (index == 1) {
                              if (!selectedCm) {
                                if (heightController.text.isNotEmpty) {
                                  final double ctf = double.parse(
                                      heightController.text.trim());
                                  final int ftca = (ctf * 0.0328).ceil();
                                  heightController.text = ftca.toString();
                                }
                              }
                              selectedCm = true;
                            }
                            // selectedCm = index == 0 ? false : true;
                            // if (selectedCm) {
                            // if (heightController.text.isNotEmpty) {
                            //   final double ftc =
                            //       double.parse(heightController.text.trim());
                            //   final double ftca = ftc * 30.48;
                            //   heightController.text = ftca.toString();
                            // }
                            // } else {
                            // if (heightController.text.isNotEmpty) {
                            //   final double ctf =
                            //       double.parse(heightController.text.trim());
                            //   final int ftca = (ctf * 0.0328).ceil();
                            //   heightController.text = ftca.toString();
                            // }
                            // }
                          },
                        );
                      },
                    ),
                    const Spacer(),
                    Container(
                      width: 150,
                      child: TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter height!';
                          }
                          return null;
                        },
                        controller: heightController,
                        decoration: const InputDecoration(
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(!selectedCm ? 'Feet' : 'cm'),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                ),
                // Container(
                //   padding: const EdgeInsets.symmetric(horizontal: 30),
                //   child: Column(
                //     crossAxisAlignment: CrossAxisAlignment.start,
                //     children: [
                //       DropdownButtonFormField<String>(
                //         hint: const Text('in feet'),
                //         items: _heightInFeet.map((e) {
                //           return DropdownMenuItem(
                //             child: Text(e.toString()),
                //             value: e,
                //           );
                //         }).toList(),
                //         validator: (value) {
                //           if (value?.isEmpty ?? true) {
                //             return 'Please Select height in feet';
                //           }
                //         },
                //         onChanged: (newvalue) {
                //           setState(() {
                //             dropdownValue = newvalue;
                //           });
                //         },
                //       ),
                //       DropdownButtonFormField<String>(
                //         hint: const Text('in cm'),
                //         items: _heightInFeet.map((e) {
                //           return DropdownMenuItem(
                //             child: Text(e.toString()),
                //             value: e,
                //           );
                //         }).toList(),
                //         validator: (value) {
                //           if (value?.isEmpty ?? true) {
                //             return 'Please Select heigth in cm';
                //           }
                //         },
                //         onChanged: (newvalue) {
                //           setState(() {
                //             dropdownValue = newvalue;
                //           });
                //         },
                //       ),
                //       const SizedBox(
                //         height: 15,
                //       ),
                //       // DropdownButtonFormField(
                //       //   hint: const Text('in cm'),
                //       //   items: _heightInFeet.map((e) {
                //       //     return DropdownMenuItem(
                //       //       child: Text(e.toString()),
                //       //       value: e,
                //       //     );
                //       //   }).toList(),
                //       //   onChanged: (newValue) {
                //       //     setState(() {
                //       //       dropdownValue = newValue;
                //       //     });
                //       //   },
                //       // ),
                //     ],
                //   ),
                // ),
                // FormField(
                //   builder: (FormFieldState<bool> state) {
                //     return Row(
                //       children: [
                //         const Text(
                //           'Height',
                //           style: TextStyle(
                //             fontSize: 18,
                //             fontWeight: FontWeight.w500,
                //           ),
                //         ),
                //         const SizedBox(
                //           width: 60,
                //         ),
                //         DropdownButton(
                //           hint: Text(_selectedheightInFeet == null
                //               ? 'in feet'
                //               : _selectedheightInFeet.toString()),
                //           items: _heightInFeet.map((e) {
                //             return DropdownMenuItem(
                //               child: Text(e.toString()),
                //               value: e,
                //             );
                //           }).toList(),
                //           onChanged: (value) {
                //             setState(() {
                //               _selectedheightInFeet = value;
                //             });
                //           },
                //         ),
                //         const SizedBox(
                //           width: 30,
                //         ),
                //         // Selected height in cm
                //         DropdownButton(
                //           hint: Text(_selectedheightInCm == null
                //               ? 'in cm'
                //               : _selectedheightInCm.toString()),
                //           items: _heightInFeet.map((e) {
                //             return DropdownMenuItem(
                //               child: Text(e.toString()),
                //               value: e,
                //             );
                //           }).toList(),
                //           onChanged: (e) {
                //             setState(
                //               () {
                //                 _selectedheightInCm = e;
                //               },
                //             );
                //           },
                //         ),
                //       ],
                //     );
                //   },
                //   validator: (value) {
                //     if (value != true) {
                //       return 'Please Select Gender';
                //     }
                //     return null;
                //   },
                // ),
                //Ending of FormFied
                // Row(
                //   children: [
                //     const Text(
                //       'Height',
                //       style: TextStyle(
                //         fontSize: 18,
                //         fontWeight: FontWeight.w500,
                //       ),
                //     ),
                //     const SizedBox(
                //       width: 60,
                //     ),
                //     // Selected height in feet
                //     DropdownButton(
                //       hint: Text(_selectedheightInFeet == null
                //           ? 'in feet'
                //           : _selectedheightInFeet.toString()),
                // items: _heightInFeet.map((e) {
                //   return DropdownMenuItem(
                //     child: Text(e.toString()),
                //     value: e,
                //   );
                // }).toList(),
                //       onChanged: (value) {
                //         setState(
                //           () {
                //             _selectedheightInFeet = value;
                //           },
                //         );
                //       },
                //     ),
                //     const SizedBox(
                //       width: 30,
                //     ),
                //     // Selected height in cm
                //     DropdownButton(
                //       hint: Text(_selectedheightInCm == null
                //           ? 'in cm'
                //           : _selectedheightInCm.toString()),
                //       items: _heightInFeet.map((e) {
                //         return DropdownMenuItem(
                //           child: Text(e.toString()),
                //           value: e,
                //         );
                //       }).toList(),
                //       onChanged: (value) {
                //         setState(() {
                //           _selectedheightInCm = value;
                //         });
                //       },
                //     ),
                //     const SizedBox(
                //       width: 100,
                //     ),
                //   ],
                // ),

                const SizedBox(
                  height: 15,
                ),
                //Phone Number
                const PhoneNumberTextFormField(),
                const SizedBox(
                  height: 20,
                ),
                //Email id text field
                TextFormFieldForFullName(
                  icon: const Icon(Icons.email),
                  labelText: 'Email',
                  validator: (value) {
                    const String pattern =
                        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
                        r'{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]'
                        r'{0,253}[a-zA-Z0-9])?)*$';
                    RegExp regex = RegExp(pattern);
                    if (value == null ||
                        value.isEmpty ||
                        !regex.hasMatch(value))
                      return 'Enter a valid email address';
                    else
                      return null;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                //Submit Button
                Align(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    onPressed: () {
                      // if (gender == 'none') {
                      //   ScaffoldMessenger.of(context).showSnackBar(
                      //     const SnackBar(
                      //       content: Text('Please Select gender.'),
                      //     ),
                      //   );
                      // }
                      // if (_selectedheightInFeet == null) {
                      //   ScaffoldMessenger.of(context).showSnackBar(
                      //     const SnackBar(
                      //       content: Text('Please Select height in feet.'),
                      //     ),
                      //   );
                      // }
                      // if (_selectedheightInCm == null) {
                      //   ScaffoldMessenger.of(context).showSnackBar(
                      //     const SnackBar(
                      //       content: Text('Please Select height in cm.'),
                      //     ),
                      //   );
                      // }
                      if (_formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Processing Data'),
                          ),
                        );
                      }
                    },
                    child: const Text('Submit'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
