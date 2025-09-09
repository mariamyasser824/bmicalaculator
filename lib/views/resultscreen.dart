import 'package:bmicalaculator/globals.dart';
import 'package:bmicalaculator/widgets/resultwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({super.key});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFF24263B),
        title: Center(
          child: Text(
            "BMI Calculator",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 25.sp),
          ),
        ),
      ),
      backgroundColor: Color(0xff1C2135),
      body: Column(
        children: [
          Row(
            children: [
              RPadding(
                padding: const EdgeInsets.only(left: 15, top: 20),
                child: Text(
                  "Your Result",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 40.sp),
                ),
              ),
            ],
          ),
          Center(
            child: Column(
              children: [
                SizedBox(
                  height: 30.h,
                ),
                ResultWidget(
                
                ),
                //  SizedBox(height: 30,),
                RPadding(
                  padding: const EdgeInsets.all(10),
                  child: InkWell(
                    onTap: () {
                      //setState(() {});
                      Navigator.pop(context);
                      
                    },
                    child: Container(
                        width: 350.w,
                        height: 45.h,
                        decoration: BoxDecoration(
                          color: Color(0xffE83D67),
                          borderRadius: BorderRadius.all(Radius.circular(10.r)),
                        ),
                        child: Center(
                            child: Text(
                          " Re - Calculate",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30.sp),
                        ))),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
