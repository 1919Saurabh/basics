import 'package:flutter/material.dart';

class TextFieldForDOB extends StatefulWidget {
  const TextFieldForDOB({super.key});

  @override
  State<TextFieldForDOB> createState() => _TextFieldForDOBState();
}

class _TextFieldForDOBState extends State<TextFieldForDOB> {
  TextEditingController dateController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: dateController,
      keyboardType: TextInputType.none,
      onTap: () async {
        final DateTime? datetimePicker = await showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(1900),
            lastDate: DateTime(2100));

        if (datetimePicker != null) {
          setState(() {
            dateController.text =
                '${datetimePicker.day}/${datetimePicker.month}/${datetimePicker.year}';
          });
        }
      },
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter Date of birth!';
        }
        return null;
      },
      decoration: const InputDecoration(
        prefixIcon: Icon(Icons.calendar_today_rounded),
        label: Text('Data of birth'),
        hintText: 'mm/dd/yyyy',
        floatingLabelStyle: TextStyle(fontSize: 20),
        border: OutlineInputBorder(),
      ),
    );
  }
}
