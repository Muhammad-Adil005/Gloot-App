import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glootapp/Screen/EditProfile.dart';
import 'package:glootapp/Screen/FavouriteSeller.dart';
import 'package:glootapp/Screen/Notifications.dart';
import 'package:glootapp/Screen/adminAllMessages.dart';
import 'package:glootapp/Screen/change_password.dart';
import 'package:glootapp/Screen/my_order.dart';
import 'package:google_fonts/google_fonts.dart';

import 'CustomerProfile.dart';
import 'my_wallet.dart';

class AdminProfilePage extends StatefulWidget {
  const AdminProfilePage({Key? key}) : super(key: key);

  @override
  State<AdminProfilePage> createState() => _AdminProfilePageState();
}

class _AdminProfilePageState extends State<AdminProfilePage> {
  Widget MyContainer({required IconData icon, required String text}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.h),
      height: 46.h,
      width: 327.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          width: 1,
          color: Color(0xffF3F3F3),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 10.w),
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.red.shade300,
              size: 22.sp,
            ),
            SizedBox(width: 10.w),
            Text(
              text,
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.w500,
                fontSize: 14.sp,
                color: Color(0xff191D31),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                  width: 375.w,
                  height: 200.h,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.w, right: 20.w),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 40.h, left: 5.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Mon profile',
                                style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 22.sp,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 40.h),
                              Row(
                                children: [
                                  Image(
                                    image: AssetImage('assets/images/men1.png'),
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(width: 10.w),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Micheal Sam',
                                        style: GoogleFonts.outfit(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16.sp,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(height: 5.h),
                                    ],
                                  ),
                                  SizedBox(width: 40.w),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                EditProfilePage()),
                                      );
                                    },
                                    child: Container(
                                      width: 128.w,
                                      height: 34.h,
                                      decoration: BoxDecoration(
                                        color: Colors.white.withOpacity(0.5),
                                        borderRadius: BorderRadius.circular(40),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Modifier profile',
                                          style: GoogleFonts.outfit(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14.sp,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20.w, top: 20.h),
                      width: 84.w,
                      height: 21.h,
                      child: Text(
                        'Paramètres',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w600,
                          fontSize: 16.sp,
                          color: Color(0xff51050F),
                        ),
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ChangePassword()),
                      );
                    },
                    child: MyContainer(
                        icon: Icons.lock, text: 'Modifier mot de passe ')),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NotificationsPage()),
                      );
                    },
                    child: MyContainer(
                        icon: Icons.notifications, text: 'Notifications')),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AdminAllChatPage()),
                      );
                    },
                    child:
                        MyContainer(icon: Icons.message, text: 'Mes Messages')),
                MyContainer(icon: Icons.logout, text: 'Déconnexion'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
