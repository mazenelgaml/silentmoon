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
  ScrollController scroll=ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        controller: scroll,
        child: Column(
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
                  child: Container(
                    height: 95,
                    width: 150,
                    child: Text(
                      "Happy Morning",
                      style: TextStyle(
                        fontSize: 34.0,
                        fontWeight: FontWeight.bold,
                      ),
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
            Container(
              width: Get.width*0.7,
              margin: EdgeInsets.only(top: 5,bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Icon(Icons.favorite, color: Colors.red),
                      SizedBox(width: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "222222222",
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                          Text(
                            "favorites",
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.headphones, color: Color(0xff7FD2F2)),
                      SizedBox(width: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "222222222",
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                          Text(
                            "Lestining",
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text(
                    "Pick a Narrator",
                    style: TextStyle(
                      fontSize: 34.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text(
                    "Male Voice",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w300,
                      color: Color(0xff8E97FD),

                    ),
                  ),
                ),
              ],
            ),
            Divider(
              color: Colors.blue,
              thickness: 1,
              indent: 20,
              endIndent: 20,
            ),
            Container(
              width: Get.width,
              height: Get.height*0.3,
              child: ListView.builder(
                controller: scroll,
                itemCount: 10, // Replace with the number of items in your list
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 10,),
                          InkWell(
                            onTap: (){},
                            child: Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Color(0xffffffff),
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Center(
                                child: Icon(Icons.play_arrow,size: 30,color: Color(0xff333242)),
                              ),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Body Scan", // Replace with your actual data e.g., data[index].title
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "5 MIN", // Replace with your actual data e.g., data[index].duration
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w300,
                                  color: Color(0xff8E97FD),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Divider(
                        color:Color(0xffA1A4B2),
                        thickness: 1,
                        indent: 20,
                        endIndent: 20,
                      ),
                    ],
                  );
                },
              ),
            )
        
        
        
          ],
        ),
      ),
    );
  }
}
