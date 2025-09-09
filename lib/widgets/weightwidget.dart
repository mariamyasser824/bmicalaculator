import 'package:bmicalaculator/globals.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class WeightWidget extends StatefulWidget {
const  WeightWidget({super.key, });
  

  @override
  _WeightWidgetState createState() => _WeightWidgetState();
}

class _WeightWidgetState extends State<WeightWidget> {

  @override
  Widget build(BuildContext context) {
    return RPadding(
      padding: const EdgeInsets.all(10),
      child: Container(
          width: 165.w,
          height: 190.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10.r)),
            color: Color(0xff333244),
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Weight",
                  style: TextStyle(color: Color(0xff8B8C9E), fontSize: 20.sp),
                ),
                Text(
                  "$weight1",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 35.sp,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        width: 40.w,
                        height: 42.h,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xff8B8C9E),
                        ),
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              if (weight1 >= 0) {
                                weight1--;
                              
                              }
                            });
                          },
                          icon: Icon(Icons.minimize),
                          color: Colors.white,
                        )),
                    Container(
                        width: 40.w,
                        height: 42.h,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xff8B8C9E),
                        ),
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              weight1++;
                              
                            });
                          },
                          icon: Icon(Icons.add),
                          color: Colors.white,
                        )),
                  ],
                )
              ])),
    );
  }
}
