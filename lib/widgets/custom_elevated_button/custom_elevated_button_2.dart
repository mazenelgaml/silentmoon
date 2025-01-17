import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';

class CustomElevatedButton2 extends StatelessWidget {
  CustomElevatedButton2({super.key,required this.onPressed, required this.text, required this.textColor, required this.buttonColor,this.icon});
  final Function onPressed;
  final String text;
  final Color textColor;
  final Color buttonColor;
  String? icon;
  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
      onPressed:onPressed(),
      style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
          fixedSize: Size(Get.width * 0.85, Get.height * 0.075),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(38))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,

        children: [
          Container(
            child:Image(image:  AssetImage(icon??"")),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Text(
              text,
              style: TextStyle(
                  color:textColor ,
                  fontSize: 14,
                  fontWeight: FontWeight.w700),
            ),
          ),
        ],
      ),
    );
  }
}

