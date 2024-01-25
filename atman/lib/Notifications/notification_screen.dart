import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../models/models.dart';
import 'mofication_model.dart';
import 'notification_detail_page.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors().background,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              IconButton(
                icon: SvgPicture.asset(
                  'assets/chatBox_icon/back.svg', // Replace with your SVG file path
                  width: 24,
                  height: 24,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                  // Handle button press
                },
              ),
              Text("Notification",style: TextStyle(
                  fontSize: 25,
                  fontFamily:"Inter" ,
                  fontWeight: FontWeight.w700,
                  color: AppColors().H1
              ),),
              const Spacer(),
              InkWell(
                onTap: (){
                  setState(() {
                    notifications.clear();
                  });
                },
                child: Text("Clear All",style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  fontFamily: "Inter",
                  color: AppColors().main
                ),),
              )
            ],
          ),
        ),
        body: notifications.isEmpty
            ? const Center(child: Text('No notifications'))
            : ListView.builder(
          itemCount: notifications.length,
          itemBuilder: (context, index) {
            // Display date header if it's the first item of the day
            if (index == 0 || notifications[index].date != notifications[index - 1].date) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      notifications[index].date,
                      style: TextStyle(fontSize: 12,
                          fontWeight: FontWeight.w500,
                      fontFamily: "Inter",
                      color: AppColors().Boxtext),
                    ),
                  ),
                  NotificationTile(notification: notifications[index]),
                ],
              );
            }
            // Display notification item
            return NotificationTile(notification: notifications[index]);
          },
        ),
      ),
    );
  }
}

class NotificationTile extends StatefulWidget {
  final NotificationItem notification;

  const NotificationTile({super.key, required this.notification});

  @override
  State<NotificationTile> createState() => _NotificationTileState();
}

class _NotificationTileState extends State<NotificationTile> {
  @override
  Widget build(BuildContext context) {


    return GestureDetector(
      onTap: () {
        widget.notification.opened=true;
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => NotificationDetailPage(
              notification: widget.notification,
              onNotificationOpened: () {
                Future.delayed(Duration.zero, () {
                  setState(() {
                    widget.notification.opened = true;
                  });
                });
              },
            ),
          ),
        );
      },

      child: ListTile(
        leading: CircleAvatar(
          radius: 8,
          backgroundColor: widget.notification.opened? AppColors().background: AppColors().main,
        ),
        title: Container(
          padding: EdgeInsets.symmetric(horizontal:12.w),
          width: 327.w,
          height: 100.h,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: const Color(0xff000000).withOpacity(0.05),
                blurRadius: 20,
                spreadRadius: 0,
                offset: const Offset(4, 8),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                  child: widget.notification.icon),
              SizedBox(width: 12.w,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                width: 215.w,
                height: 70.h,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.notification.title,style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Inter"
                    ),),
                    Text(widget.notification.message,
                      maxLines: 2,
                      style: const TextStyle(
                        fontSize: 12,
                        overflow: TextOverflow.ellipsis,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Inter"
                    ),),
                    const Spacer(),
                    Row(
                      children: [
                        Text(widget.notification.time,style: TextStyle(
                          fontFamily: "Inter",
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color: AppColors().Boxtext
                        ),),
                        const Spacer(),
                        Text(widget.notification.date,style: TextStyle(
                            fontFamily: "Inter",
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: AppColors().Boxtext
                        ),),
                      ],
                    )
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