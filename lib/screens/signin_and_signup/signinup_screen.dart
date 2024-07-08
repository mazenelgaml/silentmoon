import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/custom_elevated_button/custom_elevated_button.dart';

class SigninupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: Get.width,
          height: Get.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: Get.width,
                child: Image.asset(
                  "assets/images/logo.png",
                  fit: BoxFit.fill,
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Center(
                          child: Text(
                            "We are what we do",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            "Thousand of people are using silent moon \nfor small meditation",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                   SizedBox(height: 50,),
                    Column(
                      children: [
                        Center(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xff8E97FD),
                              borderRadius: BorderRadius.circular(38),
                            ),
                            child: CustomElevatedButton(
                              onPressed: () {},
                              text: 'SIGN UP',
                              textColor: Colors.white,
                              buttonColor: Color(0xff8E97FD),
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "ALREADY HAVE AN ACCOUNT?",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              " LOG IN",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
