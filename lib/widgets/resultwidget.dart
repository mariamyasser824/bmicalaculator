import 'package:bmicalaculator/globals.dart';
import 'package:flutter/material.dart';

class ResultWidget extends StatefulWidget {
 const ResultWidget({super.key, });

  @override

  State<ResultWidget> createState() => _ResultWidgetState();
}

class _ResultWidgetState extends State<ResultWidget> {



  
   double bmi = 0;
  String result = "";
   void calculateBMI() {
if (weight1 > 0 && height1 > 0) {
      double heightInMeters = height1 / 100;
      setState(() {
        bmi = weight1 / (heightInMeters * heightInMeters);
        if (bmi < 18.5) {
          result = "Underweight";
        } else if (bmi < 24.9) {
          result = "Normal weight";
        } else if (bmi < 29.9) {
          result = "Overweight";
        } else {
          result = "Obesity";
        }
        
      });
    } else {
      setState(() {
        result = "Please enter valid values!";
      });
    }
  }

@override
  void initState() {
    // TODO: implement initState
    super.initState();  
    calculateBMI();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        width: 350,
        height: 515,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Color(0xff333244),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Text(
              result,
              style: TextStyle(
                  color: Color(0xff21BF73),
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              bmi.toStringAsFixed(2),
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "You Have a $result Body Mass Index",
              style: TextStyle(color: Color(0xff8B8C9E), fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}
