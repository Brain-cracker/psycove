import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/models.dart';

class LoginSecurity extends StatefulWidget {
  const LoginSecurity({super.key});

  @override
  State<LoginSecurity> createState() => _LoginSecurityState();
}

class _LoginSecurityState extends State<LoginSecurity> {
  @override
  Widget build(BuildContext context) {
    double ScreenWidth = MediaQuery.of(context).size.width;
    double ScreenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors().background,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: Container(
            width: double.infinity,
            height: 70.h,
            decoration: BoxDecoration(
              color: AppColors().main,
              borderRadius: BorderRadius.only(
                // Radius for the bottom-right corner
              ),
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
                  Spacer(),
                  Container(
                    child: Text(
                      'Login & Security',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24.81,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ),
                  Spacer(),
                  SizedBox(
                    width: 30.w,
                  ),
                ],
              ),
            ),
          ),
        ),
        body: Container(
          padding: EdgeInsets.only(
              left: 12.w, right: 10.w, top: 38.h, bottom: 100.h),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 10.h),
                        child: Text(
                          'Old Password',
                          style: TextStyle(
                            color: Color(0xff606060),
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Container(
                        height: 40.h,
                        width: 300.w,
                        padding: EdgeInsets.only(
                          left: 30.w,
                        ),
                        child: TextField(
                          style: GoogleFonts.inter(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                          ),
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: 'Enter your old password',
                            hintStyle: TextStyle(
                                fontSize: 17.0, // Set the desired font size
                                fontWeight: FontWeight
                                    .normal // Set the desired font weight
                                ),
                            // Customize label color
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(6.0),
                              borderSide: BorderSide(
                                color:
                                    Color(0xffD3A3F1), // Regular border color
                                width: 5.0, // Regular border thickness
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 14.h,
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.only(
                                left: 10.w,
                              ),
                              child: Text(
                                'New Password',
                                style: TextStyle(
                                  color: Color(0xff606060),
                                  fontSize: 20,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Container(
                              height: 40.h,
                              width: 300.w,
                              padding: EdgeInsets.only(
                                left: 30.w,
                              ),
                              child: TextField(
                                style: GoogleFonts.inter(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                ),
                                obscureText: true,
                                decoration: InputDecoration(
                                  hintText: ('Enter your new password'),
                                  hintStyle: TextStyle(
                                      fontSize:
                                          17.0, // Set the desired font size
                                      fontWeight: FontWeight
                                          .normal // Set the desired font weight
                                      ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(6.0),
                                    borderSide: BorderSide(
                                      color: Color(
                                          0xffD3A3F1), // Regular border color
                                      width: 5.0, // Regular border thickness
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 14.h,
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.only(
                                left: 10.w,
                              ),
                              child: Text(
                                'Re-enter new Password',
                                style: TextStyle(
                                  color: Color(0xff606060),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Container(
                              height: 40.h,
                              width: 300.w,
                              padding: EdgeInsets.only(
                                left: 30.w,
                              ),
                              child: TextField(
                                style: GoogleFonts.inter(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                ),
                                obscureText: true,
                                decoration: InputDecoration(
                                  hintText: ('Re-enter your new password'),
                                  hintStyle: TextStyle(
                                      fontSize:
                                          17.0, // Set the desired font size
                                      fontWeight: FontWeight
                                          .normal // Set the desired font weight
                                      ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(6.0),
                                    borderSide: BorderSide(
                                      color: Color(
                                          0xffD3A3F1), // Regular border color
                                      width: 5.0, // Regular border thickness
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        bottomSheet: Container(
          width: double.maxFinite,
          height: 50.h,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 300.w,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Color(0xffD3A3F1), // Text color
                    elevation: 2, // Elevation
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10), // BorderRadius
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Set new Password',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        fontFamily: "Inter"),
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
