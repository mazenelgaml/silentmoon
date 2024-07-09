import 'package:flutter/material.dart';

class ChoosetopicScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(24.0, 40.0, 24.0, 16.0),
                child: Text(
                  "What Brings you \n to Silent Moon?",
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text(
                  "choose a topic to focuse on:",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ],
          ),


          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16.0,
                  mainAxisSpacing: 16.0,
                  childAspectRatio: 0.75,
                ),
                itemCount: 6,
                itemBuilder: (context, index) {
                  List<BenefitCardData> benefits = [
                    BenefitCardData(
                      title: 'Reduce Stress',
                      imagePath: 'assets/images/reduces stress.png',
                      color: Color(0xff808AFF),
                    ),
                    BenefitCardData(
                      title: 'Improve Performance',
                      imagePath: 'assets/images/performance.png',
                      color: Color(0xffFA6E5A),
                    ),
                    BenefitCardData(
                      title: 'Increase Happiness',
                      imagePath: 'assets/images/happiness.png',
                      color: Color(0xffFEB18F),
                    ),
                    BenefitCardData(
                      title: 'Reduce Anxiety',
                      imagePath: 'assets/images/anxiety.png',
                      color: Color(0xffFFCF86),
                    ),
                    BenefitCardData(
                      title: 'Personal Growth',
                      imagePath: 'assets/images/growth.png',
                      color: Color(0xff6CB28E),
                    ),
                    BenefitCardData(
                      title: 'Better Sleep',
                      imagePath: 'assets/images/sleep.png',
                      color: Color(0xff3F414E),
                    ),
                  ];

                  return AspectRatio(
                    aspectRatio: 0.75,
                    child: BenefitCard(
                      title: benefits[index].title,
                      imagePath: benefits[index].imagePath,
                      color: benefits[index].color,
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class BenefitCardData {
  final String title;
  final String imagePath;
  final Color color;

  BenefitCardData({
    required this.title,
    required this.imagePath,
    required this.color,
  });
}

class BenefitCard extends StatelessWidget {
  final String title;
  final String imagePath;
  final Color color;

  BenefitCard({required this.title, required this.imagePath, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              height: 150.0, // Adjust the height as needed
              width: 150.0, // Adjust the width as needed
            ),
            SizedBox(height: 16.0),
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
