import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){Get.back();},
      child: Container(
        child: CircleAvatar(
          radius: 30.0,
          backgroundColor: Colors.grey[100],
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
