import 'package:flutter/material.dart';

class CustomNextButton extends StatelessWidget {
  const CustomNextButton({super.key, required this.onPressed});
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
          color:  Color(0xff2DBB54),
          borderRadius: BorderRadius.circular(100)
      ),
      child: Center(
        child: IconButton(
          onPressed: onPressed,
          icon: Center(
            child: Image(
              image: AssetImage(
                  "assets/images/Arrow.png"
              ),
            ),
          ),
        ),
      ),
    );
  }
}
