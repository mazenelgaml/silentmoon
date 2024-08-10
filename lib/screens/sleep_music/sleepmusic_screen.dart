import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/custom_back_button/cutom_back_button.dart';

class SleepmusicScreen extends StatelessWidget {

  final List<String> imagePaths = [
  'assets/images/relatedmoon.png',
  'assets/images/relatedmoon.png',
  'assets/images/relatedmoon.png',
  'assets/images/relatedmoon.png',
  'assets/images/relatedmoon.png',
  'assets/images/relatedmoon.png',
  'assets/images/relatedmoon.png',
  'assets/images/relatedmoon.png',
  ];
  final List<String> nameMusic = [
    'Night Island',
    'Sweet Sleep',
    'Good Night',
    'Moon Clouds',
    'Sweet Sleep',
    'Night Island',
    'Night Island',
    'Night Island',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff03174C),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomBackButton(),
                  Text(
                    "Sleep Music",
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 48),
                ],
              ),
            ),
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.all(10.0),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16.0,
                  mainAxisSpacing: 10.0,
                  childAspectRatio: 0.90,
                ),
                itemCount: 8,
                itemBuilder: (context, index) {
                  return Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 177,
                          height: 122.93,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(imagePaths[index]),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        SizedBox(height: 10), // Additional vertical space between image and text
                        Text(
                          nameMusic[index],
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 5), // Additional vertical space between text sections
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "45",
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w300,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              " MIN",
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w300,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              ": SLEEP MUSIC",
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w300,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),

          ],
        ),
      ),
    );
  }
}
