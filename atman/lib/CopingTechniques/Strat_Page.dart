import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../Self_Test/Quition&Answer/quistion_page.dart';
import '../models/models.dart';
import '5-4-3-2-1_technique.dart';
import 'Box_breathing_tech.dart';

class CopingFirstPage extends StatefulWidget {
  const CopingFirstPage({super.key});

  @override
  State<CopingFirstPage> createState() => _CopingFirstPageState();
}

class _CopingFirstPageState extends State<CopingFirstPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors().main,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: Container(
            height: 70.h,
            decoration: BoxDecoration(
              color: AppColors().main,
            ),
            child: Container(
              padding: EdgeInsets.only(left: 12.w, top: 12.h, bottom: 10.h, right: 20.w),
              child: Row(
                children: [
                  IconButton(
                    icon: SvgPicture.asset(
                      'assets/chatBox_icon/back.svg', // Replace with your SVG file path
                      width: 24.h,
                      height: 24.h,
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                      // Handle button press
                    },
                  ),

                ],
              ),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              SizedBox(height:50.h),
              Container(
                alignment: Alignment.center,
                child: CircleAvatar(
                  radius: 100.w,
                  child: Column(children: [
                    SizedBox(height: 20.h,),
                    Container(
                      child: Image.asset('assets/image20.png'),
                    ),
                    Spacer(),
                    Container(
                      child: Text("5-4-3-2-1 coping Technique",textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      ),),
                    ),
                    SizedBox(height: 30.h,)
                  ],

                  ),
                ),
              ),
              SizedBox(height: 50.h,),
              Container(
                child: Text("You are one step away from overcoming your problem",textAlign: TextAlign.center,),
              ),
              SizedBox(height: 50.h,),
              Container(
                width: 100.w,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: AppColors().H2, // Text color
                    elevation: 2, // Elevation
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10), // BorderRadius
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CopingTechs()),
                    );
                  },
                  child: Text(
                    'Start',
                    style: TextStyle(
                        color: AppColors().main,
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold
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
