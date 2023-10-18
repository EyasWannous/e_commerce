// ignore_for_file: use_key_in_widget_constructors

import '../../common/login/fields/email_field.dart';
import '../../common/login/fields/password_field.dart';
import '../../common/login/login_button.dart';
import '../../../controllers/form_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sign_button/sign_button.dart';

import 'grey_lind.dart';

class SignForm extends StatelessWidget {
  final FormController _formController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formController.signinkey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const EmailField(
              labeltext: 'EMAIL ADDRESS',
              validator: 'Invalid Email',
              ifcondition: '@',
              keyboardtype: TextInputType.emailAddress),
          const PasswordField(
              labeltext: 'PASSWORD',
              validator: 'Password is too short',
              ifcondition: '_',
              keyboardtype: TextInputType.emailAddress),
          LoginButton(typeofbutton: TypeOfButton.signin, buttonText: "SignIn"),
          //const SizedBox(height: 120),
          Expanded(child: Container(width: 10)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GreyLine(),
              const Text(
                'Or join with',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),
              ),
              GreyLine(),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SignInButton.mini(
                buttonType: ButtonType.google,
                onPressed: () {},
              ),
              SignInButton.mini(
                buttonType: ButtonType.facebook,
                onPressed: () {},
              ),
            ],
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
