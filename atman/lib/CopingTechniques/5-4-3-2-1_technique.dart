import 'package:atman_2/models/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'Strat_Page.dart';

class CopingTechs extends StatefulWidget {
  const CopingTechs({super.key});

  @override
  State<CopingTechs> createState() => _CopingTechsState();
}

class _CopingTechsState extends State<CopingTechs> {
  bool isChecked = false;
  bool _BoxesVisible = false;
  bool _4Visible = false;
  bool _3Visible = false;
  bool _2Visible = false;
  bool _1Visible = false;
  bool _iseye = true;
  bool _ishand = false;
  bool _isear = false;
  bool _isnose = false;
  bool _istast = false;
  List<bool> _isCheckedList = [false, false, false, false, false];
  List<bool> _is4List = [false, false, false, false, false];
  List<bool> _is3List = [false, false, false, false, false];
  List<bool> _is2List = [false, false, false, false, false];
  String text= "Click on Eye  to Start the task";
  int check =0;
   bool _isoption=false;
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
                              '5-4-3-2-1 Technique',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Inter"
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Image.asset('assets/image20.png'),
                        ),
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
                child:  Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        IconButton(onPressed:_iseye? (){
                          setState(() {
                            for(int i=0;i<5;i++){
                              _isCheckedList[i]=false;
                            }
                            _BoxesVisible = true;
                            if( _BoxesVisible==true){
                              text="See 5 Things around you and check boxes";
                            }
                          });
                        }:null,
                            icon: SvgPicture.asset("assets/Coping_icons/eye.svg")),
                        Container(
                          height: 200.h,
                          width: 50.w,
                          alignment: Alignment.topLeft,
                          child: ListView.builder(
                              itemCount: 5,
                              itemBuilder:(context,index){
                                return Checkbox(
                                  checkColor: Colors.white,
                                  value: _isCheckedList[index],
                                  onChanged: _BoxesVisible ? (bool? value) {
                                    setState(() {
                                      _isCheckedList[index]  = value!;
                                      int cnt=0;
                                      for(int i=0;i<5;i++){
                                        if(_isCheckedList[i] ==false){
                                          cnt++;
                                          text="please check all boxes";
                                        }
                                      }
                                      if(cnt==0){
                                        _ishand =true;
                                        text="Good ! Go to the next step";
                                      }
                                    });
                                  }:null,
                                );
                              } ),
                        ),
                      ],),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconButton(onPressed:_ishand? (){
                          setState(() {
                            for(int i=0;i<4;i++){
                              _is4List[i]=false;
                            }
                              _iseye=false;
                              _4Visible = true;
                              _BoxesVisible= false;
                              text="Touch 4 things around you";
                          });
                        }:null,
                            icon: SvgPicture.asset("assets/Coping_icons/hand.svg")),
                        Container(
                          height: 200.h,
                          width: 50.w,
                          alignment: Alignment.topLeft,
                          child: ListView.builder(
                              itemCount: 4,
                              itemBuilder:(context,index){
                                return Checkbox(
                                  checkColor: Colors.white,
                                  value: _is4List[index],
                                  onChanged: _4Visible? (bool? value) {
                                    setState(() {
                                      _is4List[index]  = value!;
                                      int cmt=0;
                                      for(int i=0;i<4;i++){
                                        if(_is4List[i] ==false){
                                          cmt++;
                                          text="please check all boxes";
                                        }
                                      }
                                      if(cmt==0){
                                        _isear=true;
                                        text=" You are doing Good, Go to the next step";
                                      }
                                    });
                                  }:null,
                                );
                              } ),
                        ),
                      ],),
                    Column(
                      children: [
                        IconButton(onPressed:_isear?(){
                          setState(() {
                            for(int i=0;i<3;i++){
                              _is3List[i]=false;
                            }
                              _ishand=false;
                              _3Visible = true;
                              _4Visible =false;
                              text ="Hear 3 things around you";
                              // Toggle the visibility of the check boxes
                          });
                        }:null,
                            icon: SvgPicture.asset("assets/Coping_icons/ear.svg",color:Colors.orange,)),
                        Container(
                          height: 200.h,
                          width: 50.w,
                          alignment: Alignment.topLeft,
                          child: ListView.builder(
                              itemCount: 3,
                              itemBuilder:(context,index){
                                return Checkbox(
                                  checkColor: Colors.white,
                                  value: _is3List[index],
                                  onChanged:_3Visible? (bool? value) {
                                    setState(() {
                                      _is3List[index]  = value!;
                                      int cmt=0;
                                      for(int i=0;i<3;i++){
                                        if(_is3List[i] ==false){
                                          cmt++;
                                          text="please check all boxes";
                                        }
                                      }
                                      if(cmt==0){
                                        _isnose=true;
                                        text=" You are doing Good, Go to the next step";
                                      }
                                    });
                                  }:null,
                                );
                              } ),
                        ),
                      ],),
                    Column(
                      children: [
                        IconButton(onPressed: _isnose?(){
                          setState(() {
                            for(int i=0;i<2;i++){
                              _is2List[i]=false;
                            }
                              _isear=false;
                              _2Visible = true;
                              _3Visible=false;
                              text="Smell 2 things around you";
                          });
                        }:null,
                            icon: SvgPicture.asset("assets/Coping_icons/nose.svg",)),
                        Container(
                          height: 200.h,
                          width: 50.w,
                          alignment: Alignment.topLeft,
                          child: ListView.builder(
                              itemCount: 2,
                              itemBuilder:(context,index){
                                return Checkbox(
                                  checkColor: Colors.white,
                                  value: _is2List[index],
                                  onChanged: _2Visible?(bool? value) {
                                    setState(() {
                                      _is2List[index]  = value!;
                                      int cmt=0;
                                      for(int i=0;i<2;i++){

                                        if(_is2List[i] ==false){
                                          cmt++;
                                          text="please check all boxes";
                                        }
                                      }
                                      if(cmt==0){
                                        _istast=true;
                                        text=" You are doing Good, Go to the next step";
                                      }
                                    });
                                  }:null,
                                );
                              } ),
                        ),
                      ],),
                    Column(
                      children: [
                        IconButton(onPressed:_istast?(){
                          setState(() {
                            isChecked =false;
                            _isnose=false;
                              _1Visible =true;
                              _2Visible=false;
                              text ="Taste one thing ";
                          });
                        }:null,
                            icon: SvgPicture.asset("assets/Coping_icons/tast.svg",)),
                        Container(
                            height: 200.h,
                            width: 50.w,
                            alignment: Alignment.topLeft,
                            child: Checkbox(
                              checkColor: Colors.white,
                              value: isChecked ,
                              onChanged: _1Visible ? (bool? value)  {
                                setState(() {
                                  isChecked  = value!;
                                  if(isChecked==true) {
                                    _isoption=true;
                                    text = "Congratulations. You Completed the Task";
                                  }
                                  else{
                                    text ="Coplete task please!";
                                  }
                                });
                              }:null,
                            )
                        ),

                      ],),
                  ],
                ),
              ),
              SizedBox(height: 20.h,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: Text(text,textAlign: TextAlign.center,),

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
                          backgroundColor: _isoption?AppColors().main:Colors.grey,
                          child: Icon(Icons.repeat,size: 30,)),
                      onPressed:_isoption? () {
                        final key = GlobalKey<_CopingTechsState>();
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CopingTechs(key: key),
                          ),
                        );
                      }:null,
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
                        onPressed:_isoption? () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => CopingFirstPage()),
                          );
                        }:null,
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
}
