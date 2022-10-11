import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextFormFieldForFullName extends StatelessWidget {
  final String labelText;
  final String? Function(String?)? validator;
  final Icon? icon;

  const TextFormFieldForFullName(
      {super.key, required this.labelText, required this.validator, this.icon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: validator,
      decoration: InputDecoration(
        prefixIcon: icon,
        label: Text(labelText),
        floatingLabelStyle: const TextStyle(fontSize: 18),
        border: const OutlineInputBorder(),
      ),
    );
  }
}
