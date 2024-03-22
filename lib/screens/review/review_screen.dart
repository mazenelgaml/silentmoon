import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import '../../widgets/custom_back_button/cutom_back_button.dart';
import '../../widgets/custom_next_button/custom_next_button.dart';

class ReviewScreen extends StatelessWidget {
  const ReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                width: Get.width,
                height: Get.height * 0.4,
                child: Stack(
                  alignment: AlignmentDirectional.topCenter,
                  children: [
                    Container(
                      width: Get.width,
                      height: Get.height * 0.28,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/Background1.png"),
                              fit: BoxFit.fill)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0, bottom: 10),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: CustomBackButton(),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text(
                                "You are in place!",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 150,
                      child: Container(
                        width: 166,
                        height: 166,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100)),
                        child: Image(
                          image: AssetImage("assets/images/profile.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    )
                  ],
                )),
            Container(
              height: Get.height*0.58,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Center(
                      child: Column(
                    children: [
                      Text(
                        "Your Driver:",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: Color(0xffD6D6D6)),
                      ),
                      Text(
                        "Wasilij Smith",
                        style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff303030)),
                      )
                    ],
                  )),
                  Container(
                    width: Get.width,
                    height: 2.5,
                    color: Color(0xffF6F6F6),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Time:",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: Color(0xffD6D6D6)),
                          ),
                          Text(
                            "15 min",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Color(0xff303030)),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "Price:",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: Color(0xffD6D6D6)),
                          ),
                          Text(
                            "\$9,99",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Color(0xff303030)),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "Distance:",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: Color(0xffD6D6D6)),
                          ),
                          Text(
                            "15 km",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Color(0xff303030)),
                          ),
                        ],
                      )
                    ],
                  ),
                  Container(
                    width: Get.width,
                    height: 2.5,
                    color: Color(0xffF6F6F6),
                  ),
                  Center(
                    child: Column(
                      children: [
                        Text(
                          "Mark,",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                              color: Color(0xffD6D6D6)),
                        ),
                        Text(
                          "How is your trip?",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                              color: Color(0xff303030)),
                        )
                      ],
                    ),
                  ),
                  Center(
                    child: RatingBar(
                      initialRating: 0,
                      minRating: 1,
                      direction: Axis.horizontal,
                      itemCount: 5,
                      itemSize: 55,
                      allowHalfRating: true,
                      ratingWidget: RatingWidget(
                        full: Icon(Icons.star,color:Color(0xff2DBB54), ),
                        empty: Icon(Icons.star_border_outlined,color: Color(0xff2DBB54),),
                        half: Icon(Icons.star_half,color:  Color(0xff2DBB54),),
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    height: Get.height * 0.12,
                    width: Get.width * 0.85,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade300,
                          offset: Offset(0, 0),
                          blurRadius: 15)
                    ]),
                    child: Center(
                        child: TextFormField(
                      textAlignVertical: TextAlignVertical.top,
                      decoration: InputDecoration(
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 60.0, horizontal: 15.0),
                          fillColor: Color(0xffffffff),
                          filled: true,
                          hintText: "Additional comment",
                          hintTextDirection: TextDirection.ltr,
                          hintStyle: TextStyle(
                            color: Color(0xffD6D6D6),
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.transparent,
                              ),
                              borderRadius: BorderRadius.circular(10))),
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Text("Submit",style: TextStyle(
                            color: Color(0xff2DBB54),
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                          ),),
                        ),
                        CustomNextButton(onPressed: (){},)
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
