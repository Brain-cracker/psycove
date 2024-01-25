import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../models/models.dart';

class DataPrivacy extends StatefulWidget {
  const DataPrivacy({super.key});

  @override
  State<DataPrivacy> createState() => _DataPrivacyState();
}

class _DataPrivacyState extends State<DataPrivacy> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors().background,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(70),
          child: Container(
            width: double.infinity,
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
                  const Spacer(),
                  const Text(
                    'Data and Privacy',
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [InkWell(
              onTap: (){},
              child: Container(
                margin: EdgeInsets.only(left: 12.w,right: 12.w),
                height: 67.h,
                width: 353.w,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(color: Colors.black,width: 2)
                ),
                child: const Center(
                  child: Text(
                    'How we protect your data',
                    style: TextStyle(
                      color: Color(0xff606060),
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.normal
                    ),
                  ),
                ),
              ),
            )],
          ),
        ),
      ),
    );
  }
}
