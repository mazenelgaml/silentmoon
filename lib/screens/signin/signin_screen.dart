import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../widgets/custom_back_button/cutom_back_button.dart';
import '../../widgets/custom_text_form_field/custom_text_form_field.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomBackButton(),
          Center(
            child: Container(
              child: Text(
                "Welcome Back!",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
          ),
          Center(
            child: CustomTextFormField(text: 'Email address',),
          )
        ],
      ),
    );
  }
}
