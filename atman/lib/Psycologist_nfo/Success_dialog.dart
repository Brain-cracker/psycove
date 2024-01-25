import 'package:atman_2/Psycologist_nfo/review_dialog.dart';
import 'package:atman_2/models/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

Future<void> SuccessDialog(BuildContext context) async {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        content: Container(
          height: 300.h,
          width: 350.w,
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.center,
                child: SvgPicture.asset('assets/coin.svg',
                  height: 100,
                  width: 100,
                ),
              ),
              SizedBox(height: 25.h,),
              Text(
                'Successful',
                style: TextStyle(
                  color: AppColors().H1,
                  fontSize: 25,
                  fontFamily: 'Inter',
                  height: 0,
                ),
              ),
              SizedBox(height: 12.h,),
              Container(
                margin: const EdgeInsets.only(left: 20),
                alignment: Alignment.center,
                width: 320.w,
                height: 60.h,
                child: const Text(
                  'Congrats! you payment is successful.Get therapy by your desired therapist',
                  style: TextStyle(
                    color: Color(0xff606060),
                    fontSize: 15,
                    fontFamily: 'Poppins',
                    height: 0,
                  ),
                ),
              ),
              SizedBox(
                height: 19.h,
              ),
              SizedBox(
                width: 116,
                height: 43,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: const Color(0xffD3A3F1), // Text color
                    elevation: 5, // Elevation
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10), // BorderRadius
                    ),
                  ),
                  onPressed: () {
                    ReviewDialog(context);
                  },
                  child: const Text(
                    'Done',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w800,
                      height: 0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}




































