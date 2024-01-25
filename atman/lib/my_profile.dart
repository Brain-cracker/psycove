import 'dart:typed_data';
import 'package:atman_2/graphPage/graph_page.dart';
import 'package:atman_2/pages/account_inffo.dart';
import 'package:atman_2/pages/edit_userName_dialog.dart';
import 'package:atman_2/pages/loginsecurity.dart';
import 'package:atman_2/pages/message_centre.dart';
import 'package:atman_2/pages/payments.dart';
import 'package:atman_2/pages/personal_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';
import 'Psycologist_nfo/psychologist_search_page.dart';
import 'models/models.dart';
import 'pages/edit_name_dialog.dart';
class Profile extends StatefulWidget {
  const Profile({super.key});
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  Uint8List? _image;
  void selectImage()async{
    Uint8List img = await pickImage(ImageSource.gallery);
    setState(() {
      _image =img;
    });
  }
  String profileName = 'Nikesh';
  String userName = 'nikesh848848';// Initial profile name

  void editProfileName() async {
    String? editedName = await showDialog(
      context: context,
      builder: (context) => EditProfileDialog(initialName: profileName),
    );

    if (editedName != null && editedName.isNotEmpty) {
      setState(() {
        profileName = editedName;
      });
    }
  }
  void editUserName() async {
    String? editedUserName = await showDialog(
      context: context,
      builder: (context) => EditUserDialog(userName:userName,),
    );

    if (editedUserName != null && editedUserName.isNotEmpty) {
      setState(() {
        userName = editedUserName;
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    double ScreenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: AppColors().background,
              ),
            ),
            Container(
              height: 170.h,
              decoration: const BoxDecoration(
                color: Color(0xffD3A3F1),
                borderRadius: BorderRadius.only(
                  bottomLeft:
                      Radius.circular(16.0), // Radius for the top-left corner
                  bottomRight:
                      Radius.circular(16.0), // Radius for the bottom-right corner
                ),
              ),
            ),
            Positioned(
              top: 12.h,
              left: 12.w,
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
            Positioned(
              top: 65.h,
              left: 100.w,
              right: 100.w,
              child: Column(
                children: [
                  Container(
                    width: 150.w,
                    height: 150.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: AppColors().main,
                        width: 1.0,
                      ),
                    ),
                    child:_image != null
                        ? CircleAvatar(
                      radius: 80,
                      backgroundImage: MemoryImage(_image!),
                    )
                        : const CircleAvatar(
                      radius: 80,
                      backgroundImage: AssetImage('assets/images/image1.png'),
                    ),
                  ),
                  SizedBox(height: 10.h),
                ],
              ),
            ),
            Positioned(
              top: 220.h,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding:  EdgeInsets.only(left: 35.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          profileName,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Color(0xFF222222),
                            fontSize: 20,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        IconButton(
                          icon: const Icon(Icons.edit),
                          onPressed: () {
                            editProfileName();
                          },
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 35.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                         "@$userName",
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        IconButton(
                          icon: const Icon(Icons.edit),
                          onPressed: () {
                            editUserName();
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),),
            Positioned(
              top: 170.h,
                left: 205.w,
                child: IconButton(
                  onPressed: (){
                    selectImage();
                  },
                    icon: Icon(Icons.add_a_photo_rounded,size: 30,color: AppColors().main,))

            ),
            Positioned(
              top: ScreenHeight / 2.20.h,
              bottom: 20.h,
              child: Container(
                padding: EdgeInsets.only(left: 12.w,right: 12.w,top: 20.h),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const PsychologisstSearch())
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.only(left: 8.w,top: 12.h),
                          child: Row(children: [
                            SvgPicture.asset(
                              'assets/diamond.svg',
                              height: 50.0,
                              width: 50.0,
                            ),
      
                            SizedBox(
                                width:
                                    15.0.w), // Adjust spacing between icon and text
                            const Text(
                              'Invite friends',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ]),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 12.w,vertical: 12.h),
                        width: 315.w,
                        height: 2, // Height of the divider
                        color: const Color(0xffEEEEEE),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const Account()),
                              );
                            },
                            child: Container(
                              padding: const EdgeInsets.all(12.0),
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Row(children: [
                                SvgPicture.asset(
                                  'assets/account.svg',
                                  height: 30.0,
                                  width: 30.0,
                                ),

                                SizedBox(
                                    width:
                                        20.0.w), // Adjust spacing between icon and text
                                // Button Text
                                const Text(
                                  'Account info',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ]),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const MyProfile()),
                              );
                            },
                            child: Container(
                              padding: const EdgeInsets.all(12.0),
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Row(children: [
                                SvgPicture.asset(
                                  'assets/personal.svg',
                                  height: 30.0,
                                  width: 30.0,
                                ),

                                SizedBox(
                                    width:
                                        20.0.w), // Adjust spacing between icon and text
                                // Button Text
                                const Text(
                                  'Personal profile',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,

                                  ),
                                ),
                              ]),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const MessageCentre()),
                              );
                            },
                            child: Container(
                              padding: const EdgeInsets.all(12.0),
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Row(children: [
                                SvgPicture.asset(
                                  'assets/message.svg',
                                  height: 30.0,
                                  width: 30.0,
                                ),

                                SizedBox(
                                    width:
                                        20.0.w), // Adjust spacing between icon and text
                                // Button Text
                                const Text(
                                  'Message center',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,

                                  ),
                                ),
                              ]),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const LoginSecurity()),
                              );
                            },
                            child: Container(
                              padding: const EdgeInsets.all(12.0),
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Row(children: [
                                SvgPicture.asset(
                                  'assets/login.svg',
                                  height: 30.0,
                                  width: 30.0,
                                ),

                                SizedBox(
                                    width:
                                        20.0.w), // Adjust spacing between icon and text
                                // Button Text
                                const Text(
                                  'Login and security',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ]),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const MyPerformence()),
                              );
                            },
                            child: Container(
                              padding: const EdgeInsets.all(12.0),
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Row(children: [
                                SvgPicture.asset(
                                  'assets/lock-key.svg',
                                  height: 30.0,
                                  width: 30.0,
                                ),

                                SizedBox(
                                    width:
                                        20.0.w), // Adjust spacing between icon and text
                                // Button Text
                                const Text(
                                  'Data and privacy',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,

                                  ),
                                ),
                              ]),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const MyPayment()),
                              );
                            },
                            child: Container(
                              padding: const EdgeInsets.all(12.0),
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Row(children: [
                                SvgPicture.asset(
                                  'assets/payment.svg',
                                  height: 30.0,
                                  width: 30.0,
                                ),

                                SizedBox(
                                    width:
                                        20.0.w), // Adjust spacing between icon and text
                                // Button Text
                                const Text(
                                  "Payment's",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ]),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
