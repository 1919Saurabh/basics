import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';

class PhoneNumberTextFormField extends StatefulWidget {
  const PhoneNumberTextFormField({super.key});

  @override
  State<PhoneNumberTextFormField> createState() =>
      _PhoneNumberTextFormFieldState();
}

class _PhoneNumberTextFormFieldState extends State<PhoneNumberTextFormField> {
  final countryPicker = const FlCountryCodePicker();
  CountryCode countryCode =
      const CountryCode(name: 'India', code: 'In', dialCode: '+91');

  TextEditingController phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter Date of birth!';
        }
        return null;
      },
      controller: phoneController,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        counterText: "",
        floatingLabelStyle: const TextStyle(fontSize: 18),
        label: const Text('Phone Number'),
        border: const OutlineInputBorder(),
        prefixIcon: Container(
          margin: const EdgeInsets.only(left: 10, right: 15),
          child: InkWell(
            onTap: () async {
              final code = await countryPicker.showPicker(context: context);
              setState(
                () {
                  if (code != null) {
                    countryCode = code;
                  }
                },
              );
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  child: countryCode.flagImage,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(countryCode.dialCode),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
