import 'package:atman_2/Psycologist_nfo/psychologist_profile.dart';
import 'package:atman_2/models/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:like_button/like_button.dart';

import 'chat_room.dart';

class PsychologisstSearch extends StatefulWidget {
  const PsychologisstSearch({super.key});

  @override
  State<PsychologisstSearch> createState() => _PsychologisstSearchState();
}

class _PsychologisstSearchState extends State<PsychologisstSearch> {
  @override
  Widget build(BuildContext context) {
    double ScreenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          backgroundColor: AppColors().background,
          appBar: PreferredSize(
              preferredSize: Size.fromHeight(200),
              child: Container(
                  width: ScreenWidth,
                  height: 140.h,
                  decoration: ShapeDecoration(
                    color: AppColors().main,
                    shape: RoundedRectangleBorder(

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
                            child:IconButton(
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
                          Spacer(),
                          Container(
                            height: 27.h,
                            child: Text(
                              'Find your Pal',
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ),
                          SizedBox(width: 40.w,),
                          Spacer()
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10.w),
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        height: 40.h,
                        child: TextField(
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w100,
                            color: Colors.black
                          ),
                          
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(5.0),
                            filled: true,
                            fillColor: Colors.white,
                            prefixIcon: Icon(Icons.search_sharp),
                            hintText: 'Psychologist',
                            hintStyle: const TextStyle(
                                fontSize: 17.0, // Set the desired font size
                                fontWeight: FontWeight
                                    .normal // Set the desired font weight
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(6.0),
                              borderSide: BorderSide(
                                color: Color(0xffD3A3F1), // Regular border color
                                 // Regular border thickness
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ))),
          body: ListView.builder(
            itemBuilder: (context, index) {
              PsychologyProfile profile =details[index];
              return Container(
                padding: EdgeInsets.only(left: 10.h, top: 10),
                margin: EdgeInsets.symmetric(horizontal: 21.w, vertical: 22.h),
                height: 170.h,
                width: 386.w,
                decoration: BoxDecoration(
                    border: Border.all(color: AppColors().main, width: 1),
                    borderRadius: BorderRadius.circular(8)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 86.h,
                          width: 104.w,
                          child: Image.asset(
                            'assets/images/${profile.Image}.png',
                            width: 104.w,
                            height: 86.h,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 16.33.w),
                          width: 185.w,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 123.w,
                                    child: Text(
                                      profile.name,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style:
                                          Theme.of(context).textTheme.bodyMedium,
                                    ),
                                  ),
                                  Spacer(),
                                  LikeButton(
                                    isLiked: profile.Like,
                                    size: 22.h,
                                    circleColor: CircleColor(
                                        start: Color(0xff00ddff),
                                        end: Color(0xff0099cc)),
                                    bubblesColor: BubblesColor(
                                      dotPrimaryColor: Color(0xff33b5e5),
                                      dotSecondaryColor: Color(0xff0099cc),
                                    ),
                                  )
                                ],
                              ),
                              Text(
                                profile.Experiance,
                                style: Theme.of(context).textTheme.labelSmall,
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 11.w,
                                    height: 10.h,
                                    decoration: BoxDecoration(
                                        color: AppColors().main,
                                        borderRadius: BorderRadius.circular(7)),
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Text(
                                   " ${profile.Stories} Patient Stories",
                                    style:
                                        Theme.of(context).textTheme.labelSmall,
                                  ),
                                ],
                              ),
                              RatingBar.builder(
                                minRating: 1,
                                initialRating:profile.Rate,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemSize: 16,
                                itemPadding:
                                    EdgeInsets.symmetric(horizontal: 2.0),
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                ignoreGestures: true,
                                onRatingUpdate: (rating) {},
                              ),
                              Text(
                              "${ profile.Rate}"+" | " +"${ profile.Review}" ,
                                style: Theme.of(context).textTheme.labelSmall,
                              ),
                              Text(
                                '@ "${ profile.Price}" /-',
                                style: Theme.of(context).textTheme.labelSmall,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 34.h,
                          width: 75.w,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.black,
                              backgroundColor: Color(0xffD3A3F1), // Text color
                              elevation: 2,
                              shadowColor: AppColors().shadow,// Elevation
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10), // BorderRadius
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ChatRoom()),
                              );
                            },
                            child: Text(
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
                        Container(
                          height: 34.h,
                          width: 150.41.w,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              splashFactory: InkSplash.splashFactory,
                              foregroundColor: Colors.black,
                              backgroundColor: AppColors().main,
                              shadowColor: AppColors().shadow,// Text color
                              elevation: 2,
                              // Elevation
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                // BorderRadius
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => PsychologistProfile(profile)),
                              );

                            },
                            child: Text(
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
                    )
                  ],
                ),
              );
            },
            itemCount: details.length,
          )),
    );
  }
}
