import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SleepScreen extends StatefulWidget {
  SleepScreen({super.key});

  int selectedIndex = 0;

  @override
  State<SleepScreen> createState() => _SleepScreenState();
}

class _SleepScreenState extends State<SleepScreen> {
  @override
  Widget build(BuildContext context) {
    List<String> photos = [
      "assets/images/all.png",
      "assets/images/My.png",
      "assets/images/Anxious.png",
      "assets/images/sleepIconTop.png",
      "assets/images/kids.png"
    ];
    List<String> names = ["All", "My", "Anxious", "Sleep", "Kids"];
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/images/sleepBackground.png"))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Column(
                  children: [
                    Container(
                      child: Text(
                        "Sleep Stories",
                        style: TextStyle(
                            color: Color(0xffE6E7F2),
                            fontWeight: FontWeight.bold,
                            fontSize: 28),
                      ),
                    ),
                    Container(
                      child: Text(
                        "Soothing bedtime stories to help you fall",
                        style: TextStyle(
                            color: Color(0xffE6E7F2),
                            fontWeight: FontWeight.w300,
                            fontSize: 16),
                      ),
                    ),
                    Center(
                      child: Container(
                        child: Text(
                          "into a deep and natural sleep",
                          style: TextStyle(
                              color: Color(0xffE6E7F2),
                              fontWeight: FontWeight.w300,
                              fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 15, top: 20),
                      width: Get.width,
                      height: Get.height * 0.15,
                      child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                setState(() {
                                  widget.selectedIndex = index;
                                });
                              },
                              child: Container(
                                child: Column(
                                  children: [
                                    Container(
                                      width: 65,
                                      height: 65,
                                      decoration: BoxDecoration(
                                          color: widget.selectedIndex == index
                                              ? Color(0xff8E97FD)
                                              : Color(0xff586894),
                                          borderRadius: BorderRadius.circular(25)),
                                      child: Center(
                                        child: Image(
                                          image: AssetImage(photos[index]),
                                        ),
                                      ),
                                    ),
                                    Center(
                                      child: Container(
                                        margin: EdgeInsets.only(top: 10),
                                        child: Text(
                                          names[index],
                                          style: TextStyle(
                                              fontWeight: widget.selectedIndex == index
                                                  ? FontWeight.w800
                                                  : FontWeight.w600,
                                              fontSize: 16,
                                              color: widget.selectedIndex == index
                                                  ? Colors.white
                                                  : Color(0xff586894)),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                          separatorBuilder: (context, index) {
                            return SizedBox(
                              width: 15,
                            );
                          },
                          itemCount: 5),
                    ),
                    Center(
                      child: Container(
                        width: Get.width * 0.9,
                        height: Get.height * 0.24,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage("assets/images/sleepsong.png"))),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 10, top: 10),
                                  width: 35,
                                  height: 35,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Color(0xffE6E7F2).withOpacity(0.6),
                                            blurRadius: 2)
                                      ]),
                                  child: Center(
                                    child: Icon(
                                      Icons.lock,
                                      color: Colors.white,
                                      size: 17,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Center(
                              child: Text(
                                "The ocean moon",
                                style: TextStyle(
                                    color: Color(0xffFFE7BF),
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Center(
                              child: Text(
                                "Non-stop 8- hour mixes of",
                                style: TextStyle(
                                    color: Color(0xffF9F9FF),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            Center(
                              child: Text(
                                "our",
                                style: TextStyle(
                                    color: Color(0xffF9F9FF),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            Center(
                              child: Text(
                                "most popular sleep audio",
                                style: TextStyle(
                                    color: Color(0xffF9F9FF),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            Center(
                              child: Container(
                                margin: EdgeInsets.only(top: 5),
                                width: 80,
                                height: 40,
                                decoration: BoxDecoration(
                                    color: Color(0xffEBEAEC),
                                    borderRadius: BorderRadius.circular(25)),
                                child: Center(
                                  child: Text(
                                    "Start",
                                    style: TextStyle(
                                        color: Color(0xff3F414E),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
