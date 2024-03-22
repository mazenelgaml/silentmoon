import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.white
      ),
      child: Center(
        child: IconButton(onPressed: (){
          Get.back();
        },
          icon: Center(
            child: Icon(
              Icons.keyboard_backspace,
              color: Color(0xff2DBB54),
            ),
          ) ,),
      ),
    );
  }
}
