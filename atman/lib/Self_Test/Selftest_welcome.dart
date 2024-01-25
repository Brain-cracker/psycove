import 'package:atman_2/Self_Test/Selftest_02.dart';
import 'package:atman_2/models/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SelfTest01 extends StatefulWidget {
  const SelfTest01({super.key});

  @override
  State<SelfTest01> createState() => _SelfTest01State();
}

class _SelfTest01State extends State<SelfTest01> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().background,
      appBar: AppBar(
        backgroundColor: AppColors().background,
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
      body: Stack(
        children: [
          Positioned(
              top: 0.h,
              right: 0.w,
              child: SvgPicture.asset('assets/self_test_img/topback.svg')),
          Positioned(
              top: 70.h,
              left: 20.w,
              right: 20.w,
              child: SvgPicture.asset('assets/self_test_img/selfheart.svg')),
          Positioned(
            top: 360.h,
            left: 12.w,
            right: 12.w,
            bottom: 50.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Self Test",style:TextStyle(
                  fontSize: 25,
                  color: AppColors().main,
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w600
                )),
                SizedBox(height: 12.h,),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                    child: const Text("This self-test is designed to provide you with insights into various aspects of your mental and emotional well-being",
                        textAlign: TextAlign.center,
                        style:TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Rubik",
                        ))),
                const Spacer(),
                SizedBox(
                  width: 295.w,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: const Color(0xffD3A3F1), // Text color
                      elevation: 2, // Elevation
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), // BorderRadius
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SelfTest02()),
                      );

                    },
                    child: const Text(
                      'Next',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.normal
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
