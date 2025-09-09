import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AgeWidget extends StatefulWidget {
  const AgeWidget({super.key});

    
  @override
  State<AgeWidget> createState() => _AgeWidgetState();
}

class _AgeWidgetState extends State<AgeWidget> {
  
int age = 26;
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
                  "Age",
                  style: TextStyle(color: Color(0xff8B8C9E), fontSize: 20.sp),
                ),
                Text(
                  "$age",
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
                              if (age > 0) {
                                age--;
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
                              age++;
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
