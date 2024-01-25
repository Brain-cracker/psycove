import 'package:atman_2/Self_Test/Selftest_welcome.dart';
import 'package:atman_2/models/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class BookAppoinment extends StatefulWidget {
  const BookAppoinment({super.key});

  @override
  State<BookAppoinment> createState() => _BookAppoinmentState();
}

class _BookAppoinmentState extends State<BookAppoinment> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child:Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            IconButton(
              icon: SvgPicture.asset(
                'assets/chatBox_icon/back.svg', // Replace with your SVG file path
                width: 24,
                height: 24,
              ),
              onPressed: () {
                Navigator.of(context).pop();
                // Handle button press
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 30.w),
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          height: 477.h,
          width: 355.w,
          color: AppColors().mainshadow,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/images/like.svg'),
              SizedBox(height: 26.h,),
              const Text("Thank You",style: TextStyle(
                fontSize: 38,
              fontWeight: FontWeight.w800,
              fontFamily: "Inter"),),
              SizedBox(height: 12.h,),
              Text("Your Appoinment Successful",
              style: TextStyle(
                fontSize: 20,
                fontFamily:"Inter" ,
                fontWeight: FontWeight.normal,
                color: AppColors().Boxtext
              ),),
              SizedBox(height: 12.h,),
              SizedBox(
                width: 321.w,
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
                      MaterialPageRoute(builder: (context) => const SelfTest01()),
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
              SizedBox(height: 12.h,),
              Text("Edit your appoinment",style: TextStyle(
                color: AppColors().Boxtext,
                fontSize: 14,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
                height: 0,
              ),)
            ],

          ),
        ),
      ),
    ),
    );
  }
}
