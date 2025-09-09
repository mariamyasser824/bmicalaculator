import 'package:bmicalaculator/globals.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class Heightwidget extends StatefulWidget {
 const  Heightwidget({super.key});
  
  @override
  State<Heightwidget> createState() => _HeightwidgetState();
}

class _HeightwidgetState extends State<Heightwidget> {

  @override
  Widget build(BuildContext context) {
    return RPadding(
      padding: const EdgeInsets.all(10),
      child: Container(
        width: 350.w,
        height: 180.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Color(0xff333244),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Height",
              style: TextStyle(color: Color(0xff8B8C9E), fontSize: 25.sp),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "${height1.toInt()}",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 35.sp,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  " cm",
                  style: TextStyle(color: Colors.white, fontSize: 20.sp),
                )
              ],
            ),
            Slider(
              value: height1,
              onChanged: (value) {
                setState(() {
                  height1 = value;
                });
              },
              min: 100,
              max: 200,
              activeColor: Color(0xffE83D67),
              inactiveColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
