import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../models/models.dart';
import 'mofication_model.dart';

class NotificationDetailPage extends StatelessWidget {
  final NotificationItem notification;
  final VoidCallback onNotificationOpened;

  const NotificationDetailPage({super.key,
    required this.notification,
    required this.onNotificationOpened,
  });

  @override
  Widget build(BuildContext context) {
    onNotificationOpened();

    return Scaffold(
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
            Text(notification.title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 20,
                fontFamily:"Inter" ,
                fontWeight: FontWeight.w700,
                color: AppColors().H1
            ),),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Message: ${notification.message}',
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}