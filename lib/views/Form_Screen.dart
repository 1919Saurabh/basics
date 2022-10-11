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
  String? validateEmail(String? value) {
    const String pattern =
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r'{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]'
        r'{0,253}[a-zA-Z0-9])?)*$';
    RegExp regex = RegExp(pattern);
    if (value == null || value.isEmpty || !regex.hasMatch(value))
      return 'Enter a valid email address';
    else
      return null;
  }

  //picking height
  List<String> _heightInFeet = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10'
  ];

  List<String> _heightInCm = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10'
  ];

  String? _selectedheightInFeet;
  String? _selectedheightInCm;

  final _formKey = GlobalKey<FormState>();

  TextEditingController dateController = TextEditingController();

  String? gender;

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
                Row(
                  children: [
                    Row(
                      children: [
                        Radio(
                          value: 'male',
                          groupValue: gender,
                          onChanged: (value) {
                            if (value == null) {
                              const Text('Please Select Gender');
                            } else {
                              setState(() {
                                gender = value;
                              });
                            }
                          },
                        ),
                        const Text('Male')
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                          value: 'female',
                          groupValue: gender,
                          onChanged: (value) {
                            setState(() {
                              gender = value;
                            });
                          },
                        ),
                        const Text('Female')
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                          value: 'other',
                          groupValue: gender,
                          onChanged: (value) {
                            setState(() {
                              gender = value;
                            });
                          },
                        ),
                        const Text('other')
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                // Date of Birth
                const TextFieldForDOB(),
                const SizedBox(
                  height: 10,
                ),
                // Height
                Row(
                  children: [
                    const Text(
                      'Height',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      width: 60,
                    ),
                    // Selected height in feet
                    DropdownButton(
                      hint: Text(_selectedheightInFeet == null
                          ? 'in feet'
                          : _selectedheightInFeet.toString()),
                      items: _heightInFeet.map((e) {
                        return DropdownMenuItem(
                          child: Text(e.toString()),
                          value: e,
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          _selectedheightInFeet = value;
                        });
                      },
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    // Selected height in cm
                    DropdownButton(
                      hint: Text(_selectedheightInCm == null
                          ? 'in cm'
                          : _selectedheightInCm.toString()),
                      items: _heightInFeet.map((e) {
                        return DropdownMenuItem(
                          child: Text(e.toString()),
                          value: e,
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          _selectedheightInCm = value;
                        });
                      },
                    ),
                    const SizedBox(
                      width: 100,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
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
                      if (gender != null) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Please Select gender.'),
                          ),
                        );
                      }
                      if (_selectedheightInFeet == null) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Please Select height in feet.'),
                          ),
                        );
                      }
                      if (_selectedheightInCm == null) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Please Select height in cm.'),
                          ),
                        );
                      }
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
