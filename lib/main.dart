import 'package:bmicalaculator/views/resultscreen.dart';
import 'package:bmicalaculator/views/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize:
            Size(MediaQuery.of(context).size.width, MediaQuery.of(context).size.height), // Set your design screen size (width, height)
        minTextAdapt: true, // Enables automatic text scaling
        splitScreenMode: true, // Supports split-screen mode
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Splash(),
            routes: {
              "/result": (context) => ResultScreen(),
            },
          );
        });
  }
}
