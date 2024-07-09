import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({super.key, required this.text,this.icon});
    final String text;
    Widget? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width*0.9,
      child: TextFormField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 15.0),
          labelText: text,
          labelStyle: TextStyle(color: Colors.black),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: Color(0xFFF5F7FB),
          suffixIcon: icon
        ),
      ),
    );
  }
}
