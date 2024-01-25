
import 'package:atman_2/Self_Test/Selftest_welcome.dart';
import 'package:atman_2/models/models.dart';
import 'package:atman_2/my_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../Notifications/notification_screen.dart';
import 'quistion_page.dart';

class ResultScreen extends StatefulWidget {
  final int score;
  const ResultScreen(this.score, {Key? key}) : super(key: key);

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

     backgroundColor: AppColors().background,
      body: Center(
        child: Container(
          height: 363.h,
          width: 325.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors().main.withOpacity(0.2),
            border: Border.all(color: Colors.grey)
          ),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 24.h,),
              Container(
                margin: EdgeInsets.only(right: 10.w),
                  child: Image.asset("assets/self_test_img/boy2.png")),
              SizedBox(height: 12.h,),
              const Text("Congratulations !",style: TextStyle(
                fontFamily: "Inter",
                fontWeight: FontWeight.w600,
                fontSize: 28,
              ),),
              SizedBox(height: 12.h,),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                child: Text("Your score is ${widget.score} you doing good, keep get going in your mental wellbeing journey.",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w500,
                  fontSize: 19,
                ),),
              ),
              SizedBox(height: 10.h,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 24.w,),
                width: 300.w,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: const Color(0xffD3A3F1), // Text color
                    elevation: 2,
                    shadowColor: AppColors().shadow,// Elevation
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10), // BorderRadius
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const NotificationPage()),
                    );
                  },
                  child: const Text(
                    'Done',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
