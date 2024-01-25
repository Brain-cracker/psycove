import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../models/models.dart';
import 'Strat_Page.dart';

class BoxBreathing extends StatefulWidget {
  const BoxBreathing({super.key});

  @override
  State<BoxBreathing> createState() => _BoxBreathingState();

}

class _BoxBreathingState extends State<BoxBreathing>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  bool isAnimating = false;
  int completionCount = 0;
String text1 ="Click Start to Begin the task and done it minimum 3 times";
  List<String> texts = [
    'Take a breath for 4 second',
    'Hold  for 4 second ',
    'Exhale for 4 second ',
    'Hold  for 4 second ',
  ];
  int currentIndex = 0;
  Timer? timer;
  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 16),
    );

    _animation = Tween<double>(
      begin: 0,
      end: pi*2,
    ).animate(_controller)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          completionCount++;
          if (completionCount < 3) {
            _controller.reset();
            _controller.forward();
          }
          else {
            completionCount = 0;
            if (isAnimating) {
              _controller.reset();
              _controller.forward();
            }
          }
        }
      });
  }
  String getTextForArm() {
    if (_animation.value <= pi / 2) {
      return 'Take a breathe for 4 second';
    } else if (_animation.value <= pi) {
      return 'Hold  for 4 second';
    } else if (_animation.value <= 3 * pi / 2) {
      return 'Exhale for 4 second';
    } else {
      return 'Hold  for 4 second';
    }
  }
  bool _isoption =true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(200),
          child: Container(
              height: 140.h,
              decoration: ShapeDecoration(
                color:Color(0xffD3A3F1),
                shape: RoundedRectangleBorder(

                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 14.h,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10.w),
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        height: 40.h,
                        child:  Container(
                          alignment: Alignment.center,
                          height: 27.h,
                          child: Text(
                            'Box Breating Technique',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                fontFamily: "Inter"
                            ),
                          ),
                        ),
                      ),
                      Image.asset('assets/image20.png'),
                    ],
                  )
                ],
              ))),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            SizedBox(height: 30.h,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 8.w),
              height: 260.h,
              width: 330.w,
              decoration: BoxDecoration(
                  color: Color(0xffD9D9D9)
              ),
              child: Center(
                child: AnimatedBuilder(
                  animation: _animation,
                  builder: (context, child) {
                    double size = 200.0;
                    double x = 0;
                    double y = 0;
                    if (_animation.value <= pi / 2) {
                      x = size * _animation.value / (pi / 2);
                      y = 0;
                    } else if (_animation.value <= pi) {
                      x = size;
                      y = size * (_animation.value - pi / 2) / (pi / 2);
                    } else if (_animation.value <= 3 * pi / 2) {
                      x = size - size * (_animation.value - pi) / (pi / 2);
                      y = size;
                    } else if (_animation.value <= 2 * pi) {
                      x = 0;
                      y = size - size * (_animation.value - 3 * pi / 2) / (pi / 2);
                    }
                    return Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 15,bottom: 10,left: 10,top: 10),
                          width: size,
                          height: size,
                          decoration: BoxDecoration(
                            color: Color(0xffD9D9D9),
                            border: Border.all(
                              width:2,
                              color: AppColors().main
                            )
                          ),
                          child: child,
                        ),
                        Positioned(
                          top: y , // Adjusted to make the dot visible on the edges
                          left: x ,
                          child: Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                              color: AppColors().main,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 70.h,
                          left:35.w,
                          right:35.w,
                          child: Text(isAnimating?
                            getTextForArm():" ",textAlign:TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                                fontSize: 18),
                          ),
                        ),
                      ],
                    );
                  },
                  child: Container(),
                ),
              ),
            ),
            SizedBox(height: 20.h,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              child: Text(isAnimating?"Repeat minimum 3 times":text1,textAlign: TextAlign.center,),

            ),
            SizedBox(height: 25.h,),
            Container(
              padding: EdgeInsets.symmetric(horizontal:30.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: CircleAvatar(
                        radius:35,
                        backgroundColor:AppColors().main,
                        child: Icon(isAnimating ? Icons.stop : Icons.play_arrow,size: 30,)),
                    onPressed: () {
                      if (isAnimating) {
                        _controller.stop();
                      } else {
                        _controller.reset();
                        _controller.forward();
                      }
                      setState(() {
                        _isoption =false;
                        isAnimating = !isAnimating;
                      });
                    },
                  ),
                  Container(
                    width: 100.w,
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: AppColors().main, // Text color
                        elevation: 2, // Elevation
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10), // BorderRadius
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CopingFirstPage()),
                        );
                      },
                      child: Text(
                        'Done',
                        style: TextStyle(
                            color: AppColors().H1,
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
    );
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  void startDisplay() {
    currentIndex = 0; // Reset the index
    timer?.cancel(); // Cancel any existing timer
    timer = Timer.periodic(Duration(seconds: 4),(timer) {
      if (currentIndex < texts.length - 1) {
        setState(() {
          currentIndex++;
        });
      } else {
        timer.cancel();// Stop the timer when all texts are displayed
      }
    });
  }
}
