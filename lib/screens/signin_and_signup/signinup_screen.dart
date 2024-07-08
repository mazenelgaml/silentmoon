import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_utils/get_utils.dart';

class SigninupScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body:Container(
      width: Get.width,
      height: Get.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       Container(
         width: Get.width,
         child:  Image.asset("assets/images/logo.png",
         fit: BoxFit.fill,),
       ),
        Center(
          child: Container(
            child: Text(
              "We are what we do",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ),
        ),
        Center(
          child: Container(
            child: Text(
              "Thousand of people are using silent moon \n                 for small meditation",
              style: TextStyle(
                fontWeight: FontWeight.w300, // or FontWeight.light
                fontSize: 14
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
        child: Text(
        "ALREADY HAVE AN ACCOUNT?",
          style: TextStyle(
            fontWeight: FontWeight.w500, // or FontWeight.medium
            fontSize: 14,
          ),
        ),
      ),
            Container(
              child: Text(
                " LOG IN",
                style: TextStyle(
                  fontWeight: FontWeight.w500, // or FontWeight.medium
                  fontSize: 14,
                ),
              ),
            ),

          ],
        ),


        ],
      ),
    ),
    );
  }
}
