import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/custom_back_button/cutom_back_button.dart';

class CoursedetailsScreen extends StatefulWidget {
  const CoursedetailsScreen({Key? key}) : super(key: key);

  @override
  _CoursedetailsScreenState createState() => _CoursedetailsScreenState();
}

class _CoursedetailsScreenState extends State<CoursedetailsScreen> {
  bool isFavorite = false; // Track favorite state
  bool isInstalled = false; // Track install state

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: Get.width,
            height: 288.78,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/sun.png'),
                fit: BoxFit.cover,
              ),
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomBackButton(),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isFavorite = !isFavorite; // Toggle favorite state
                          });
                        },
                        child: CircleAvatar(
                          backgroundColor: Color(0xff03174C),
                          radius: 27.5,
                          child: Icon(
                            isFavorite ? Icons.favorite : Icons.favorite_border,
                            color: isFavorite ? Colors.red : Colors.white,
                            size: 30.0,
                          ),
                        ),
                      ),
                      SizedBox(width: 10), // Adjust spacing between icons
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isInstalled = !isInstalled; // Toggle install state
                          });
                        },
                        child: CircleAvatar(
                          backgroundColor: Color(0xff03174C),
                          radius: 27.5,
                          child: Icon(
                            Icons.install_mobile,
                            color: isInstalled ? Colors.green : Colors.white,
                            size: 30.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(24.0, 40.0, 24.0, 16.0),
                child: Text(
                  "Happy\nMorning",
                  style: TextStyle(
                    fontSize: 34.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text(
                  "Ease the mind into a restful night’s sleep with\nthese deep, amblent tones.",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }
}
