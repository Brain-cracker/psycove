import 'package:atman_2/Self_Test/Quition&Answer/quistion_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../models/models.dart';
import 'result_screen.dart';

class QuistionPage extends StatefulWidget {
  const QuistionPage({super.key});

  @override
  State<QuistionPage> createState() => _QuistionPageState();
}

class _QuistionPageState extends State<QuistionPage> {
  List view = [];
  int score = 0;
  int index = 0;
  bool isPrassed = false;
   String selectedOtion ="";
  final PageController? _controller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        backgroundColor: AppColors().background,
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(200),
            child: Container(
                height: 200.h,
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                        const Spacer(),
                        SvgPicture.asset('assets/self_test_img/qa1.svg',height: 120.h,width: 120.w,),
                        const Spacer(),
                        const SizedBox(width: 60,)
                      ],
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: const Text(
                        "Few Steps ahead to your mental health",style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontFamily: "Inter",
                      ),
                      ),
                    ),
                  ],
                ),),),
        body: PageView.builder(
            controller: _controller,
            itemCount: quistion.length,
            onPageChanged: (page) {
              setState(() {
                isPrassed = false;
              });
            },

            itemBuilder: (context, index){
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      padding: EdgeInsets.only(left: 12.w, top: 10.h, right: 12.w),
                      margin: EdgeInsets.only(top: 10.h),
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(30)),
                      child: Text(
                        "${index + 1}.${quistion[index].title}",
                            style: const TextStyle(fontSize: 18,
                           fontStyle: FontStyle.italic,
                           fontWeight: FontWeight.w500,
                               fontFamily: "Inter",
                                color: Colors.black),
                      )),
                  for (int i = 0; i < quistion[index].Option.length; i++)
                    Container(
                      margin: EdgeInsets.only(top: 15.h,left: 10.w,right: 10.w),
                      child: GestureDetector(

                        onTap: isPrassed
                            ? () {}
                            : () {
                          setState(() {
                            isPrassed = true;
                            setState(() {
                              selectedOtion =quistion[index].Option[i];
                            });
                          });
                          if (quistion[index]
                              .Option[i]==quistion[index]
                              .Option[0]) {
                            score += 4;
                          } else if (quistion[index]
                              .Option[i]==quistion[index]
                              .Option[1]) {
                            score += 3;
                          }
                          else if (quistion[index]
                              .Option[i]==quistion[index]
                              .Option[2]) {
                            score += 2;
                          }
                          else {
                            score += 1;
                          }
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: 40,
                          width: 300,
                          decoration: BoxDecoration(
                            color: isPrassed ? selectedOtion == quistion[index].Option[i]
                            ? AppColors().main
                             :AppColors().H2
                             :AppColors().H2,
                            border: Border.all(
                              color: AppColors().main,
                              width: 2
                            ),

                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Text(
                            '${quistion[index].Option.toList()[i]}',
                            style: const TextStyle(fontSize: 18,
                                fontWeight: FontWeight.w500,
                                fontFamily: "Inter",
                                color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  const Spacer(),
                  Container(
                    width: 295.w,
                    margin: EdgeInsets.only(bottom: 20.w),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10), // BorderRadius
                        ),

                        foregroundColor: Colors.white,
                        backgroundColor: AppColors().main,
                      ), // Text color
                      onPressed: isPrassed
                          ? index + 1 == quistion.length
                          ? () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    ResultScreen(score,)));
                      }
                          : () {
                        _controller!.nextPage(
                            duration: const Duration(milliseconds: 750),
                          curve: Curves.decelerate,
                            );
                        setState(() {
                          isPrassed = false;
                        });
                      }
                          : null,
                      child: Text(
                        index + 1 == quistion.length
                            ? "See Result"
                            : "Next Question",
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              );
        })
      
      ),
    );
  }
}
