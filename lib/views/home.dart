import 'package:bmicalaculator/widgets/agewidget.dart';
import 'package:bmicalaculator/widgets/genderwidget.dart';
import 'package:bmicalaculator/widgets/heightwidget.dart';
import 'package:bmicalaculator/widgets/weightwidget.dart';
import'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Home extends StatelessWidget {
   const Home({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0XFF24263B),
      title: Center(
        child: Text("BMI Calculator",style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold,fontSize: 25.sp),),
      ),
      ),
  backgroundColor: Color(0xff1C2135),
  body: Expanded(
    child: Column(
      children: [
      GenderWidget(),
        SizedBox(height: 10.h,),
        Heightwidget(),
        SizedBox(height: 10.h,),
        RPadding(
          padding: const EdgeInsets.all(4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              WeightWidget(),
              SizedBox(width: 8.w,),
              AgeWidget()
            ],
          ),
        ),
    SizedBox(height:15.h,),
        InkWell(
          onTap: (){
            Navigator.pushNamed(context, "/result");
    
          },
          child: Container(
            width: 350.w,
           height:45.h,
            decoration: BoxDecoration(
              color: Color(0xffE83D67),
              borderRadius: BorderRadius.all(Radius.circular(10.r)),
            ),
            child: Center(child: Text("Calculate",style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold,fontSize: 30.sp),))),
        )
    
    
    
      ],
    ),
  ),
    );
  }
}