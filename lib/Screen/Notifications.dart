import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  Widget MyContainer(
      {required String text1,
      required String text2,
      required String text3,
      required String text4}) {
    return Container(
      padding: EdgeInsets.only(left: 20.w, right: 20.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 44.h,
            width: 44.w,
            decoration: BoxDecoration(
              image: DecorationImage(
                // fit: BoxFit.cover,
                image: AssetImage('assets/images/message.png'),
              ),
              shape: BoxShape.circle,
              color: Color(0xff1D272F),
            ),
          ),
          SizedBox(width: 10.w),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text1,
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w500,
                  fontSize: 14.sp,
                  color: Color(0xff191D31),
                ),
              ),
              Text(
                text2,
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w500,
                  fontSize: 14.sp,
                  color: Color(0xff191D31),
                ),
              ),
              Text(
                text3,
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w400,
                  fontSize: 14.sp,
                  color: Color(0xffA7A9B7),
                ),
              ),
            ],
          ),
          SizedBox(width: 30.w),
          Text(
            text4,
            style: GoogleFonts.roboto(
              fontWeight: FontWeight.w500,
              fontSize: 12.sp,
              color: Color(0xffA7A9B7),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: 812.h,
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(height: 10.h),
                Column(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.only(left: 20.w, right: 20.w, top: 10.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image(
                            image: AssetImage('assets/images/Rectangle.png'),
                          ),
                          Text(
                            'Notifications',
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w700,
                              fontSize: 20.sp,
                              color: Color(0xff51050F),
                            ),
                          ),
                          SizedBox(width: 20.w),
                          Row(
                            children: [
                              Icon(
                                Icons.notifications_active,
                                size: 40.sp,
                                color: Colors.yellow,
                              ),
                              SizedBox(width: 12.w),
                              Image(
                                image: AssetImage('assets/images/person.png'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.only(left: 20.w, right: 20.w, top: 30.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Récentes',
                                style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16.sp,
                                  color: Color(0xff51050F),
                                ),
                              ),
                              SizedBox(width: 8.w),
                              Container(
                                height: 20.h,
                                width: 20.w,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xffFD683D),
                                ),
                                child: Center(
                                  child: Text(
                                    '4',
                                    style: GoogleFonts.outfit(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 10.sp,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'Tout effacer',
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w400,
                              fontSize: 14.sp,
                              color: Color(0xffFD683D),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.h),
                    MyContainer(
                        text1: 'Kathryn vous a envoyé un',
                        text2: 'message',
                        text3: 'Cliquer pour voir le message',
                        text4: 'il y a 2 min'),
                    Container(
                      padding:
                          EdgeInsets.only(top: 20.h, left: 20.w, right: 20.w),
                      child: Divider(
                        thickness: 1,
                        color: Colors.grey.shade200,
                      ),
                    ),
                    SizedBox(height: 20.h),
                    MyContainer(
                        text1: 'Kathryn vous a envoyé un',
                        text2: 'message',
                        text3: 'Cliquer pour voir le message',
                        text4: 'il y a 2 min'),
                    Container(
                      padding:
                          EdgeInsets.only(top: 20.h, left: 20.w, right: 20.w),
                      child: Divider(
                        thickness: 1,
                        color: Colors.grey.shade200,
                      ),
                    ),
                    SizedBox(height: 20.h),
                    MyContainer(
                        text1: 'Kathryn vous a envoyé un',
                        text2: 'message',
                        text3: 'Cliquer pour voir le message',
                        text4: 'il y a 2 min'),
                    Container(
                      padding:
                          EdgeInsets.only(top: 20.h, left: 20.w, right: 20.w),
                      child: Divider(
                        thickness: 1,
                        color: Colors.grey.shade200,
                      ),
                    ),
                    SizedBox(height: 30.h),
                    MyContainer(
                        text1: 'Kathryn vous a envoyé un',
                        text2: 'message',
                        text3: 'Cliquer pour voir le message',
                        text4: 'il y a 2 min'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
