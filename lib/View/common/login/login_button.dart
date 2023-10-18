// ignore_for_file: use_key_in_widget_constructors

import '../../../controllers/form_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum TypeOfButton { signin, register }

class LoginButton extends StatelessWidget {
  final String buttonText;
  final TypeOfButton typeofbutton;
  LoginButton({
    required this.typeofbutton,
    required this.buttonText,
  });

  final FormController _formController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: SizedBox(
        width: double.infinity,
        height: 40.0,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.black),
            textStyle: MaterialStateProperty.all(
              const TextStyle(fontSize: 20, color: Colors.white),
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              const RoundedRectangleBorder(
                borderRadius: BorderRadius.zero,
                side: BorderSide.none,
              ),
            ),
          ),
          onPressed: () {
            if (typeofbutton == TypeOfButton.signin) {
              return _formController.saveSignInfo();
            }
            return _formController.saveRegisterInfo();
          },
          child: Text(buttonText),
        ),
      ),
    );
  }
}
