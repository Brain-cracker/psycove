import 'package:atman_2/models/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors().background,
      appBar:  PreferredSize(
          preferredSize: const Size.fromHeight(70),
          child: Container(
            width: double.infinity,
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
                    'Personal Profile',
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
          padding: EdgeInsets.only(left: 12.w, right: 10.w, top: 12.h,bottom: 75.h),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Your Name',
                      style: TextStyle(
                        color: Color(0xff606060),
                        fontSize: 20,
                        fontFamily: 'Poppins',
                          fontWeight: FontWeight.normal
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      height: 40.h,
                      width: 300.w,
                      padding: EdgeInsets.only(left: 15.w,),
                      child: TextField(
                        style: GoogleFonts.inter(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                        decoration: InputDecoration(
                          hintText: 'Name',
                          hintStyle: const TextStyle(
                              fontSize: 17.0, // Set the desired font size
                              fontWeight: FontWeight
                                  .normal // Set the desired font weight
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
                      height: 15.h,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Gender',
                          style: TextStyle(
                            color: Color(0xff606060),
                            fontSize: 20,
                           fontFamily: "Inter",
                              fontWeight: FontWeight.normal
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                          height: 40.h,
                          width: 300.w,
                          padding: EdgeInsets.only(left: 15.w,),
                          child: FormBuilderDropdown(
                            style: GoogleFonts.inter(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: Colors.black
                            ),

                            name: 'gender',
                            decoration: InputDecoration(
                              hintText: "Select Gender",
                              hintStyle: const TextStyle(
                                  fontSize: 17.0, // Set the desired font size
                                  fontWeight: FontWeight
                                      .normal // Set the desired font weight
                              ),
                              contentPadding: const EdgeInsets.symmetric(horizontal: 12,vertical: 5),
                              border: OutlineInputBorder(
                                borderSide: const BorderSide(color: Color(0xffD3A3F1),width: 5),
                                borderRadius: BorderRadius.circular(6.0),
                                // Set rounded corners
                              ),
                            ),
                            items: ['Male', 'Female', 'Other'].map((gender) => DropdownMenuItem(
                                      value: gender,
                                      child: Text(gender),
                                    ),).toList(),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Profession',
                          style: TextStyle(
                            color: Color(0xff606060),
                            fontSize: 20,
                            fontFamily: 'Poppins',
                              fontWeight: FontWeight.normal
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                          height: 40.h,
                          width: 300.w,
                          padding: EdgeInsets.only(left: 15.w,),
                          child: TextField(
                            style: GoogleFonts.inter(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                            ),
                            decoration: InputDecoration(
                              hintText: ('exmp: Student'),
                              hintStyle: const TextStyle(
                                  fontSize: 17.0, // Set the desired font size
                                  fontWeight: FontWeight.normal // Set the desired font weight
                                  ),
                              // Customize label color
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
                      ],
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Language Spoken',
                          style: TextStyle(
                            color: Color(0xff606060),
                            fontSize: 20,
                            fontFamily: 'Poppins',
                              fontWeight: FontWeight.normal
                          ),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Container(
                          height: 40.h,
                          width: 300.w,
                          padding: EdgeInsets.only(left: 15.w,),
                          child: TextField(
                            style: GoogleFonts.inter(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                            ),
                            decoration: InputDecoration(
                              hintText: ('exmp: Hindi and English'),
                              hintStyle: const TextStyle(
                                  fontSize: 17.0, // Set the desired font size
                                  fontWeight: FontWeight.normal // Set the desired font weight
                                  ), // Customize label color
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
                      ],
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Date of Birth',
                          style: TextStyle(
                            color: Color(0xff606060),
                            fontSize: 20,
                            fontFamily: 'Poppins',
                              fontWeight: FontWeight.normal
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                          height: 40.h,
                          width: 300.w,
                          padding: EdgeInsets.only(left: 15.w,),
                          child: FormBuilderDateTimePicker(
                            name: 'dob',
                            style: GoogleFonts.inter(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                            ),
                            inputType: InputType.date,
                            decoration: InputDecoration(
                              hintText: "Select Date of Birth",
                              hintStyle: const TextStyle(
                                  fontSize: 17.0, // Set the desired font size
                                  fontWeight: FontWeight.normal // Set the desired font weight
                              ),
                              contentPadding: const EdgeInsets.symmetric(horizontal: 12,vertical: 5),
                              border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xffD3A3F1), // Regular border color
                                  width: 5.0, // Regular border thickness
                                ),
                                borderRadius: BorderRadius.circular(6.0),
                                // Set rounded corners
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Bio Data',
                          style: TextStyle(
                            color: Color(0xff606060),
                            fontSize: 20,
                            fontFamily: 'Poppins',
                              fontWeight: FontWeight.normal
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                          height: 40.h,
                          width: 300.w,
                          padding: EdgeInsets.only(left: 15.w,),
                          child: TextField(
                            style: GoogleFonts.inter(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                            ),
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(horizontal: 12,vertical: 5),
                              hintStyle: const TextStyle(
                                  fontSize: 17.0, // Set the desired font size
                                  fontWeight: FontWeight.normal // Set the desired font weight
                              ), // Customize label color
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
                      ],
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Location',
                          style: TextStyle(
                            color: Color(0xff606060),
                            fontSize: 20,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.normal

                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                          height: 40.h,
                          width: 300.w,
                          padding: EdgeInsets.only(left: 15.w,),
                          child: TextField(
                            style: GoogleFonts.inter(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                            ),
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(horizontal: 12,vertical: 5),
                              hintStyle: const TextStyle(
                                  fontSize: 17.0, // Set the desired font size
                                  fontWeight: FontWeight
                                      .normal // Set the desired font weight
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
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        bottomSheet: SizedBox(
          width: double.maxFinite,
          height: 50.h,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 300.w,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: const Color(0xffD3A3F1), // Text color
                    elevation: 2, // Elevation
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10), // BorderRadius
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Update Profile',
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
      ),
    );
  }
}
