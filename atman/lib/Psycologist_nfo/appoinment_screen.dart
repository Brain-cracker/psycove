import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:like_button/like_button.dart';
import '../models/models.dart';
import 'Appoinment_booked.dart';
import 'chat_room.dart';

class MyAppoinment extends StatefulWidget {

   MyAppoinment({super.key,required this.Details});

  @override
  State<MyAppoinment> createState() => _MyAppoinmentState();
   PsychologyProfile Details;
}

TextEditingController _dateController =TextEditingController();

class _MyAppoinmentState extends State<MyAppoinment> {
  DateTime? _selectedDate; // The date selected by the user
  final DateFormat _dateFormat = DateFormat('dd / MM / yyyy');
  TimeOfDay? selectedTimeSlot ;

  @override
  Widget build(BuildContext context) {
    final timesForSelectedDate = widget.Details.Slots[_selectedDate] ?? [];
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              color: AppColors().background,
            ),
            Container(
                height: 186.h,
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
                        Expanded(
                          child: SizedBox(
                            height: 27.h,
                            child: Text(
                              'Book Appoinment',
                              style: Theme.of(context).textTheme.bodySmall
                            ),
                          ),
                        ),
                       
                      ],
                    ),
                  ],
                ),),
            Positioned(
              top: 60.h,
              left: 6.w,
              right: 6.w,
              child: Container(
                padding: EdgeInsets.only(left: 10.h, top: 10),
                margin: EdgeInsets.symmetric(horizontal: 21.w, vertical: 22.h),
                height: 170.h,
                width: 386.w,
                decoration: BoxDecoration(
                  color: AppColors().H2,
                    border: Border.all(color: AppColors().main, width: 1),
                    borderRadius: BorderRadius.circular(8)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          height: 86.h,
                          width: 104.w,
                          child: Image.asset(
                            'assets/images/${widget.Details.Image}.png',
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
                                  SizedBox(
                                    width:120,
                                    child: Text(
                                      widget.Details.name,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style:
                                      Theme.of(context).textTheme.bodyMedium,
                                    ),
                                  ),
                                  LikeButton(
                                    isLiked: widget.Details.Like,
                                    size: 22.h,
                                    circleColor: const CircleColor(
                                        start: Color(0xff00ddff),
                                        end: Color(0xff0099cc)),
                                    bubblesColor: const BubblesColor(
                                      dotPrimaryColor: Color(0xff33b5e5),
                                      dotSecondaryColor: Color(0xff0099cc),
                                    ),
                                  )
                                ],
                              ),
                              Text(
                                widget.Details.Experiance,
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
                                    "${widget.Details.Stories} Patient Stories",
                                    style:
                                    Theme.of(context).textTheme.labelSmall,
                                  ),
                                ],
                              ),
                              RatingBar.builder(
                                minRating: 1,
                                initialRating:widget.Details.Rate,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemSize: 16,
                                itemPadding:
                                const EdgeInsets.symmetric(horizontal: 2.0),
                                itemBuilder: (context, _) => const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                ignoreGestures: true,
                                onRatingUpdate: (rating) {
                                },
                              ),
                              Text(
                                "${ widget.Details.Rate} | ${ widget.Details.Review}",
                                style: Theme.of(context).textTheme.labelSmall,
                              ),
                              Text(
                               " @ ${widget.Details.Price} /-" ,
                                style: Theme.of(context).textTheme.labelSmall,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 12.w),
                      child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Next Available ',
                                style: Theme.of(context).textTheme.labelMedium,
                              ),
                              Text(
                                '10:00 AM tomorrow',
                                style: Theme.of(context).textTheme.labelSmall,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 34.h,
                            width: 75.w,
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
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: 280.h,
              left: 15.w,
              right: 30.w,
              bottom: 20.h,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.w),
                    height: 40.h,
                    width:165.w,
                    child: TextField(
                      controller:_dateController,
                      style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w100,
                          color: Colors.black
                      ),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 12.w),
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: Icon(Icons.calendar_month_outlined,color: AppColors().Boxtext,),
                        hintText: 'Select Date',
                        hintStyle: Theme.of(context).textTheme.bodyMedium,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: const BorderSide(
                            color: Colors.grey, // Regular border color
                            // Regular border thickness
                          ),
                        ),
                      ),
                      onTap: (){
                        _selectDate();
                      },
                      readOnly: true,
                    ),
                  ),
                  SizedBox(height: 10.h,),
                  Text("Select Time",style: Theme.of(context).textTheme.bodyMedium),
                  SizedBox(height: 10.h,),
                  Container(
                    height: 260.h,
                    padding: EdgeInsets.only(bottom: 12.h),
                    child:timesForSelectedDate.isEmpty
                        ? const Center(
                      child: Text('No available timing for this date'),
                    ):
                    GridView.builder(
                      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent:100,
                        crossAxisSpacing: 8.0,
                        mainAxisSpacing: 8.0,
                        childAspectRatio: 2
                      ),
                      itemCount: timesForSelectedDate.length,
                      itemBuilder: (context, index) {

                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedTimeSlot = timesForSelectedDate[index];
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: selectedTimeSlot == timesForSelectedDate[index]
                                  ? AppColors().main
                                  :AppColors().H2,
                              border: Border.all(
                                width: 1,
                                color: AppColors().Boxtext
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            padding: const EdgeInsets.all(5.0),
                            child: Center(
                              child: Text(
                                timesForSelectedDate[index].format(context) ,
                                style: TextStyle(
                                  color: selectedTimeSlot == timesForSelectedDate[index]
                                      ? Colors.white
                                      : AppColors().main,
                                  fontSize: 13
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ]
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
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const BookAppoinment()),
                    );
                  },
                  child: const Text(
                    'Next',
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
  Future <void> _selectDate() async{
    final _Picked =await showDatePicker(
        context:context,
        firstDate: DateTime.now(),
        lastDate: DateTime(2099),
        initialDate: DateTime.now(),
        builder: (BuildContext context, Widget? child) {
      return Theme(
        data: ThemeData.light().copyWith(
          primaryColor: AppColors().main, // Header background color
          hintColor: AppColors().main,
          buttonTheme: const ButtonThemeData(textTheme: ButtonTextTheme.primary),
          colorScheme: ColorScheme.light(primary: AppColors().main),
        ),
        child: child!,
      );
    },
    );
    if(_Picked != null){
      setState(() {
        _dateController.text=_dateFormat.format(_Picked);
        _selectedDate=_Picked;
        selectedTimeSlot=null;
      });
    }
  }
}




