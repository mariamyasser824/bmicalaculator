import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GenderWidget extends StatefulWidget {
  const GenderWidget({super.key});

  @override
  State<GenderWidget> createState() => _GenderWidgetState();
}

class _GenderWidgetState extends State<GenderWidget> {
  Color buttonColorm = const Color(0xff333244);
  Color buttonColorf = const Color(0xff333244);
  bool male = false;
  bool female = false;

  void selectMale() {
    setState(() {
      male = true;
      female = false;
      buttonColorm = Colors.blueAccent;
      buttonColorf = const Color(0xff333244);
    });
  }

  void selectFemale() {
    setState(() {
      female = true;
      male = false;
      buttonColorf = Colors.pinkAccent;
      buttonColorm = const Color(0xff333244);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        RPadding(
          padding: const EdgeInsets.all(10),
          child: InkWell(
            onTap: selectMale,
            child: Container(
              width: 155.w,
              height: 185.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: buttonColorm,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:  [
                  Icon(
                    Icons.male_outlined,
                    color: Colors.white,
                    size: 140.h,
                  ),
                  Text(
                    "Male",
                    style: TextStyle(color: Color(0xff8B8C9E), fontSize: 25.sp),
                  )
                ],
              ),
            ),
          ),
        ),
        RPadding(
          padding: const EdgeInsets.all(10),
          child: InkWell(
            onTap: selectFemale,
            child: Container(
              width: 155.w,
              height: 185.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: buttonColorf,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:  [
                  Icon(
                    Icons.female_outlined,
                    color: Colors.white,
                    size: 140.h,
                  ),
                  Text(
                    "Female",
                    style: TextStyle(color: Color(0xff8B8C9E), fontSize: 25.sp),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
