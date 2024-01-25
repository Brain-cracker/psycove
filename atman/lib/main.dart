import 'package:atman_2/Psycologist_nfo/psychologist_search_page.dart';
import 'package:atman_2/models/models.dart';
import 'package:atman_2/my_profile.dart';
import 'package:atman_2/pages/payments.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'CopingTechniques/Strat_Page.dart';
import 'Notifications/notification_screen.dart';
import 'Psycologist_nfo/Appoinment_booked.dart';
import 'Psycologist_nfo/appoinment_screen.dart';
import 'Psycologist_nfo/chat_room.dart';
import 'Psycologist_nfo/psychologist_profile.dart';
import 'Self_Test/Selftest_welcome.dart';
import 'graphPage/graph_page.dart';
import 'pages/account_inffo.dart';
import 'pages/personal_profile.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      designSize: Size(360, 690),
      builder: (_,child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Responsive App Example',
          theme: ThemeData(
              primaryColor:AppColors().main,
              textTheme: TextTheme(
                  bodyLarge:GoogleFonts.inter(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w500,
                      color: AppColors().H1,
                  ),
                bodySmall: GoogleFonts.inter(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color:AppColors().H2,
                ),
                labelLarge:GoogleFonts.inter(
                  fontSize: 15.0,
                  fontWeight: FontWeight.normal,
                  color: AppColors().H1,
                ),
                labelSmall: GoogleFonts.inter(
                  fontSize:12,
                  fontWeight: FontWeight.w500,
                  color:AppColors().lebelSmall,
                ),
                bodyMedium: GoogleFonts.inter(
                    fontSize:18,

                    fontWeight: FontWeight.w500,
                    color:AppColors().H1
                ),
                labelMedium: GoogleFonts.rubik(
                    fontSize:15,
                    fontWeight: FontWeight.w500,
                    color:AppColors().main
                ),
                titleLarge:GoogleFonts.rubik(
                    fontSize:15,
                    fontWeight: FontWeight.w400,
                    color:AppColors().H1
                ),
                titleSmall: GoogleFonts.rubik(
                    fontSize:12,
                    fontWeight: FontWeight.normal,
                    color:AppColors().H1
                ),
              )
          ),
          home:Profile(),
        );
      },
    );
  }
}


