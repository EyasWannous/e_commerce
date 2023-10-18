// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class TextFieldForLogin extends StatelessWidget {
  final String labeltext;
  final String validator;
  final String ifcondition;
  final TextInputType keyboardtype;
  const TextFieldForLogin({
    required this.labeltext,
    required this.validator,
    required this.ifcondition,
    required this.keyboardtype,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: TextFormField(
        decoration: InputDecoration(
          enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey)),
          labelText: labeltext,
        ),
        keyboardType: keyboardtype,
        validator: (value) {
          if (value!.isEmpty || value.length < 4) {
            return validator;
          }
          return null;
        },
        onSaved: (newValue) => {},
      ),
    );
  }
}
