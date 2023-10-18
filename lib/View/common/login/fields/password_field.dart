// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controllers/form_controller.dart';

class PasswordField extends StatelessWidget {
  final String labeltext;
  final String validator;
  final String ifcondition;
  final TextInputType keyboardtype;
  const PasswordField({
    required this.labeltext,
    required this.validator,
    required this.ifcondition,
    required this.keyboardtype,
  });
  @override
  Widget build(BuildContext context) {
    return GetBuilder<FormController>(
      builder: (formController) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: TextFormField(
          obscureText: !formController.passwordVisibility,
          decoration: InputDecoration(
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
            ),
            suffixIcon: IconButton(
              color: formController.passwordVisibility
                  ? Colors.black
                  : Colors.grey,
              icon: Icon(formController.passwordVisibility
                  ? Icons.visibility
                  : Icons.visibility_off),
              onPressed: () {
                formController.changePasswordVisibility();
              },
            ),
            labelText: labeltext,
          ),
          keyboardType: keyboardtype,
          validator: (value) {
            if (value!.isEmpty || value.length < 8) {
              return validator;
            }
            return null;
          },
          onSaved: (newValue) => {},
        ),
      ),
    );
  }
}
