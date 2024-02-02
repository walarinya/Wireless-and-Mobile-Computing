import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SelectPlanPage(),
    );
  }
}

class SelectPlanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40.0),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                padding: EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 0, 0, 0),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Image.asset(
                  'assets/back.png', // Replace with your back button image asset
                  width: 90.0,
                  height: 45.0,
                  color: Color(0x36E591),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                'Select Your Plan',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    PlanCard('Lose Weight', 'assets/lose weight.png', gradientColors: [Color(0xFF2ADF88), Color(0xFF628F79)]),
                    SizedBox(height: 12.0),
                    PlanCard('Cardio', 'assets/cardio.png', gradientColors: [Color(0xFF2ADF88), Color(0xFF628F79)]),
                    SizedBox(height: 12.0),
                    PlanCard('Build Muscle', 'assets/build muscle.png', gradientColors: [Color(0xFF2ADF88), Color(0xFF628F79)]),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PlanCard extends StatelessWidget {
  final String planName;
  final String imagePath;
  final List<Color> gradientColors;

  PlanCard(this.planName, this.imagePath, {required this.gradientColors});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335.0,
      height: 117.0,
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: gradientColors,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            imagePath,
            width: 50.0,
            height: 100.0,
            fit: BoxFit.cover,
          ),
          SizedBox(width: 20.0),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                planName,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
