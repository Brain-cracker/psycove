import 'package:atman_2/models/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  bool switchValue1 = false;
  bool switchValue2 = false;
  bool switchValue3 = false;
  bool switchValue4 = false;
  bool switchValue5 = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors().background,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(70),
          child: Container(
            height: 70.h,
            decoration: BoxDecoration(
              color: AppColors().main,
              borderRadius: const BorderRadius.only(
                // Radius for the bottom-right corner
              ),
            ),
            child: Container(
              padding: EdgeInsets.only(left: 12.w, top: 12.h, bottom: 10.h, right: 20.w),
              child: Row(
                children: [
                  IconButton(
                    icon: SvgPicture.asset(
                      'assets/backA.svg', // Replace with your SVG file path
                      width: 24.h,
                      height: 24.h,
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                      // Handle button press
                    },
                  ),
                    const Spacer(),
                  const Text(
                    'Account info',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24.81,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    width: 30.w,
                  ),
                ],
              ),
            ),
          ),
        ),
        body: Container(
          padding: EdgeInsets.only(left: 10.w, top: 40.h, right: 10.w),
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(
                    left: 10.w,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        'E-Mail address',
                        style: TextStyle(
                          color: Color(0xff606060),
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins',
                          height: 0,
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Container(
                        height: 40.h,
                        width: 300.w,
                        padding: EdgeInsets.only(left: 35.w, ),
                        child: TextField(
                          style: GoogleFonts.inter(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                          ),
                          decoration: InputDecoration(
                            hintText: 'abcdefhg@gmail.com',
                            hintStyle: const TextStyle(
                                fontSize: 17.0, // Set the desired font size
                                fontWeight: FontWeight.normal // Set the desired font weight
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(6.0),
                              borderSide: const BorderSide(
                                color: Color(0xffD3A3F1), // Regular border color
                                width: 5.0, // Regular border thickness
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      const Divider(
                        color:
                            Color(0xffEEEEEE), // Customize the color of the line
                        thickness: 2.0, // Customize the thickness of the line
                      ),
                      const Text(
                        'Phone Number',
                        style: TextStyle(
                          color: Color(0xff606060),
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins',
                          height: 0,
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Container(
                        height: 40.h,
                        width: 300.w,
                        padding: EdgeInsets.only(left: 35.w,),
                        child: TextField(
                          style: GoogleFonts.inter(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                          ),
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: ('1234567890'),
                            hintStyle: const TextStyle(
                              fontSize: 17.0, // Set the desired font size
                              fontWeight: FontWeight.normal // Set the desired font weight
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(6.0),
                              borderSide: const BorderSide(
                                color: Color(0xffD3A3F1), // Regular border color
                                width: 5.0, // Regular border thickness
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      const Divider(
                        color:
                            Color(0xffEEEEEE), // Customize the color of the line
                        thickness: 2.0, // Customize the thickness of the line
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    left: 13.w,
                  ),
                  child: const Text(
                    'Notification',
                    style: TextStyle(
                      color: Color(0xff606060),
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      height: 0,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 30.w, top: 20.h,),
                  width: 378.w,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 200.h,
                            child: const Text(
                              'Notifications from anonymous community',
                              style: TextStyle(
                                color: Color(0xff606060),
                                fontSize: 15,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ),
                          Switch(
                            value: switchValue1,
                            onChanged: (value) {
                              setState(() {
                                switchValue1 = value;
                              });
                            },
                            activeColor: Colors.green,
                            inactiveTrackColor: Colors.grey,
                            // Set the color when the switch is on
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 200.h,
                            child: const Text(
                              'Notifications from Psychologist',
                              style: TextStyle(
                                color: Color(0xff606060),
                                fontSize: 15,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ),
                          Switch(
                            value: switchValue2,
                            onChanged: (value) {
                              setState(() {
                                switchValue2 = value;
                              });
                            },
                            activeColor: Colors.green,
                            inactiveTrackColor: Colors.grey,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 200.h,
                            child: const Text(
                              'Notifications from appointment booking',
                              style: TextStyle(
                                color: Color(0xff606060),
                                fontSize: 15,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ),
                          Switch(
                            value: switchValue3,
                            onChanged: (value) {
                              setState(() {
                                switchValue3 = value;
                              });
                            },
                            activeColor: Colors.green,
                            inactiveTrackColor: Colors.grey,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 200.h,
                            child: const Text(
                              'Notifications for session starting and ending',
                              style: TextStyle(
                                color: Color(0xff606060),
                                fontSize: 15,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ),
                          Switch(
                            value: switchValue4,
                            onChanged: (value) {
                              setState(() {
                                switchValue4 = value;
                              });
                            },
                            activeColor: Colors.green,
                            inactiveTrackColor: Colors.grey,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 200.h,
                            child: const Text(
                              'Notifications from updates',
                              style: TextStyle(
                                color: Color(0xff606060),
                                fontSize: 15,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ),
                          Switch(
                            value: switchValue5,
                            onChanged: (value) {
                              setState(() {
                                switchValue5 = value;
                              });
                            },
                            activeColor: Colors.green,
                            inactiveTrackColor: Colors.grey,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Container(
                  padding: EdgeInsets.only(
                    left: 10.w,
                    right: 10.w,
                  ),
                  child: const Divider(
                    color: Color(0xffEEEEEE), // Customize the color of the line
                    thickness: 2.0, // Customize the thickness of the line
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  width: 378.w,
                  padding: EdgeInsets.only(left: 21.w, right: 20.w,bottom: 47.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Terms & Conditions',
                        style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 20,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                        },
                        child:IconButton(
                          icon: SvgPicture.asset(
                            'assets/arrow.svg', // Replace with your SVG file path
                            width: 24.h,
                            height: 24.h,
                          ),
                          onPressed: () {
                            // Handle button press
                          },
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
