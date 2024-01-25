import 'package:atman_2/Psycologist_nfo/chat_room.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../models/models.dart';
import 'appoinment_screen.dart';

class PsychologistProfile extends StatefulWidget {
  PsychologistProfile(this.profile, {super.key});

  @override
  State<PsychologistProfile> createState() => _PsychologistProfileState();
  PsychologyProfile profile;
}

class _PsychologistProfileState extends State<PsychologistProfile> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              color:AppColors().background,
            ),
            Container(
            height: 170.h,
            decoration: ShapeDecoration(
              color: AppColors().main,
              shape: const RoundedRectangleBorder(
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 14.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.w),
                      child: IconButton(
                        icon: SvgPicture.asset(
                          'assets/backA.svg', // Replace with your SVG file path
                          width: 24,
                          height: 24,
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                          // Handle button press
                        },
                      ),
                    ),
                    SizedBox(

                      height: 27.h,
                      child: Text(
                        'Profile',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ),
                    SizedBox(width: 65.w,),
                    const Spacer()
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
              ],
            )),
            Positioned(
              top: 100.h,
              right: 12.w,
              left: 12.w,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height:30,
                      padding: EdgeInsets.symmetric(horizontal: 5.w),
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
                        },
                        child: Icon(Icons.video_call_rounded,size: 20,color: AppColors().H2,),
                      ),
                    ),
                   const Spacer(),
                    SizedBox(
                      height: 180.h,
                      width: 126.w,
                      child: Column(
                        children: [
                          Container(
                            height: 150,
                            width: 150,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,  // Specify the border color
                                width: 2.0,           // Specify the border width
                              ),
                              borderRadius: BorderRadius.circular(6.0),
                            ),
                            child: Image.asset('assets/images/${widget.profile.Image}.png',
                            height: 150,
                            width: 150.w,
                            fit: BoxFit.cover,),
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 170.w,
                              child: Text( widget.profile.name,
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context).textTheme.bodyMedium))
                        ],
                      ),
                    ),
                    const Spacer(),
                    Container(
                      height:30,
                      padding: EdgeInsets.symmetric(horizontal: 5.w),
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
                        },
                        child: Icon(Icons.add_ic_call_rounded,size: 20,color: AppColors().H2,),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 290.h,
              left: 12.w,
              right: 12.w,
              bottom: 42.h,
              child: Container(
                margin: const EdgeInsets.only(bottom: 20),
                padding: EdgeInsets.only(left: 12.w,right: 12.w,bottom: 12.h),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("About",style: Theme.of(context).textTheme.bodyMedium,),
                          SizedBox(
                            height: 10.h,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6.0),
                              color: AppColors().main,
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),

                            child: Text(widget.profile.about,
                                textAlign: TextAlign.justify,
                                style: Theme.of(context).textTheme.titleSmall),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 18.h,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Qualification",
                            style: Theme.of(context).textTheme.bodyMedium,),
                          SizedBox(
                            height: 10.h,
                          ),
                          Container(
                            width: 338.w,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6.0),
                              color: AppColors().main,
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
                            height: 59.h,
                            child: Text(widget.profile.qualification,
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.titleSmall),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 18.h,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Language Spoken",
                          style: Theme.of(context).textTheme.bodyMedium,),
                          SizedBox(
                            height: 10.h,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6.0),
                              color: AppColors().main,
                            ),
                            alignment: Alignment.center,
                            padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
                            height: 36.h,
                            width: 338.w,
                            child: Text(widget.profile.languagespoken,
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.titleSmall,),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 18.h,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Contact Details",
                            style: Theme.of(context).textTheme.bodyMedium,),
                          SizedBox(
                            height: 10.h,
                          ),
                          Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6.0),
                              color: AppColors().main,
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
                            height: 36.h,
                            width: 338.w,
                            child: Text(widget.profile.contectdetail,
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.titleSmall
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 18.h,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Years of Experiance & Field",
                            style: Theme.of(context).textTheme.bodyMedium,),
                          SizedBox(
                            height: 10.h,
                          ),
                          Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6.0),
                              color: AppColors().main,
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
                            height: 36.h,
                            width: 338.w,
                            child: Text("${widget.profile.Experiance}, ${widget.profile.field}",
                                style: Theme.of(context).textTheme.titleSmall),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 18.h,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Deals With issues like",
                            style: Theme.of(context).textTheme.bodyMedium,),
                          SizedBox(
                            height: 10.h,
                          ),
                          Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6.0),
                              color: AppColors().main,
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
                            height: 36.h,
                            width: 338.w,
                            child: Text(widget.profile.deals,
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.titleSmall),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 18.h,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("License",
                            style: Theme.of(context).textTheme.bodyMedium,),
                          SizedBox(
                            height: 10.h,
                          ),
                          Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6.0),
                              color: AppColors().main,
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
                            height: 36.h,
                            width: 338.w,
                            child: Text(widget.profile.licence,
                                textAlign: TextAlign.center
                                ,
                                style: Theme.of(context).textTheme.titleSmall),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
        bottomSheet: Container(
          margin: const EdgeInsets.all(10),
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          width: double.infinity,
          height: 50,
          decoration: const BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16.0), // Radius for the top-left corner
              topRight:
              Radius.circular(16.0), // Radius for the bottom-right corner
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 40,
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
                          MaterialPageRoute(builder: (context) => const ChatRoom()),
                        );
                      },
                      child: const Text(
                        'Chat',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 24.w,),
                  SizedBox(
                    height: 40,
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
                          MaterialPageRoute(builder: (context) => MyAppoinment(Details:widget.profile,)),
                        );
                      },
                      child: const Text(
                        'Book a session',
                        style: TextStyle(
                          color: Colors.black,
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
            ],
          ),
        ),
          ),
    );
  }
}
