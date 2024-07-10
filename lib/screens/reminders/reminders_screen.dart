import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/custom_elevated_button/custom_elevated_button.dart';

class RemindersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Add this line
      home: Scaffold(
        body: Center(
          child: TimePickerButton(),
        ),
      ),
    );
  }
}

class TimePickerButton extends StatefulWidget {
  @override
  _TimePickerButtonState createState() => _TimePickerButtonState();
}

class _TimePickerButtonState extends State<TimePickerButton> {
  Duration _duration = Duration(hours: 11, minutes: 30);
  bool _isAm = true;
  List<String> daysOfWeek = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
  List<int> selectedDayIndices = [];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(24.0, 40.0, 24.0, 16.0),
              child: Text(
                "What time would \nyou like to meditate?",
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                "Any time you can choose but We\nrecommend first thing in th morning.",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width / 1.5,
              height: 150,
              decoration: BoxDecoration(
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
              child: CupertinoTimerPicker(
                mode: CupertinoTimerPickerMode.hm,
                initialTimerDuration: _duration,
                onTimerDurationChanged: (Duration newDuration) {
                  setState(() {
                    _duration = newDuration;
                  });
                },
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width / 6,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12), // تعديل حسب الاحتياج
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: CupertinoPicker(
                itemExtent: 32.0,
                onSelectedItemChanged: (int index) {
                  setState(() {
                    _isAm = index == 0;
                  });
                },
                children: <Widget>[
                  Text('AM'),
                  Text('PM'),
                ],
              ),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(24.0, 40.0, 24.0, 16.0),
                  child: Text(
                    "What time would \nyou like to meditate?",
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text(
                    "Everyday is best, but we recommend picking\nat least five",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: Get.width,
              height: Get.height * 0.1,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: daysOfWeek.length,
                itemBuilder: (BuildContext context, int index) {
                  bool isSelected = selectedDayIndices.contains(index);
                  return GestureDetector(
                      onTap: () {
                        setState(() {
                          if (isSelected) {
                            selectedDayIndices.remove(index);
                          } else {
                            selectedDayIndices.add(index);
                          }
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: CircleAvatar(
                          backgroundColor: isSelected ? Color(0xff3F414E) : Colors.white,
                          child: Text(
                            daysOfWeek[index],
                            style: TextStyle(
                              fontSize: 18,
                              color: isSelected ? Colors.white : Color(0xffA1A4B2),
                            ),
                          ),
                          radius: 20,
                        ),
                      ));
                },
              ),
            ),
          ],
        ),
        Column(
          children: [
            Center(
              child: Container(
                  decoration: BoxDecoration(
                      color:Color(0xff8E97FD) ,
                      borderRadius: BorderRadius.circular(38)
                  ),
                  child: CustomElevatedButton(onPressed: (){}, text: 'SAVE', textColor: Colors.white, buttonColor: Color(0xff8E97FD),)),
            ),
            SizedBox(height: 8,),
            Center(
              child: Column(
                children: [
                  Text(
                    "NO THANKS",
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
