import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glootapp/Screen/EditProfile.dart';
import 'package:glootapp/Screen/SellerProfile.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Notifications.dart';
import 'VendorProfile.dart';

class SellerHome extends StatefulWidget {
  const SellerHome({Key? key}) : super(key: key);

  @override
  State<SellerHome> createState() => _SellerHomeState();
}

class _SellerHomeState extends State<SellerHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20.h),
              Padding(
                padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 10.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image(
                      image: AssetImage('assets/images/Rectangle.png'),
                    ),
                    Text(
                      'Mes créations',
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w700,
                        fontSize: 18.sp,
                        color: Color(0xff51050F),
                      ),
                    ),
                    SizedBox(width: 20.w),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NotificationsPage()),
                        );
                      },
                      child: Image(
                        image: AssetImage('assets/images/Notification.png'),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EditProfilePage()));
                      },
                      child: Image(
                        image: AssetImage('assets/images/person.png'),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Image(
                          height: 190.h,
                          width: 190.w,
                          image: AssetImage('assets/images/cake1.png'),
                          //fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 40.w),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Blue Diamond Cake',
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w700,
                                fontSize: 15.sp,
                                color: Color(0xffAB6D23),
                              ),
                            ),
                            Text(
                              'Wedding Cake',
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                fontSize: 12.sp,
                                color: Color(0xffAB6D23),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '15,90€',
                                  style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12.sp,
                                    color: Color(0xffAB6D23),
                                  ),
                                ),
                                SizedBox(width: 70.w),
                                Icon(
                                  Icons.delete,
                                  color: Colors.red,
                                  size: 20,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image(
                        height: 195.h,
                        width: 150.w,
                        //fit: BoxFit.cover,
                        image: AssetImage('assets/images/cake2.png'),
                      ),
                      Text(
                        'Blue Diamond Cake',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w700,
                          fontSize: 15.sp,
                          color: Color(0xffAB6D23),
                        ),
                      ),
                      Text(
                        'Wedding Cake',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
                          color: Color(0xffAB6D23),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '15,90€',
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w700,
                              fontSize: 12.sp,
                              color: Color(0xffAB6D23),
                            ),
                          ),
                          SizedBox(width: 70.w),
                          Icon(
                            Icons.delete,
                            color: Colors.red,
                            size: 20,
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image(
                        height: 150.h,
                        width: 200.w,
                        image: AssetImage('assets/images/cake3.png'),
                        //fit: BoxFit.cover,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 30.w),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Blue Diamond Cake',
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w700,
                                fontSize: 15.sp,
                                color: Color(0xffAB6D23),
                              ),
                            ),
                            Text(
                              'Wedding Cake',
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                fontSize: 12.sp,
                                color: Color(0xffAB6D23),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '15,90€',
                                  style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12.sp,
                                    color: Color(0xffAB6D23),
                                  ),
                                ),
                                SizedBox(width: 70.w),
                                Icon(
                                  Icons.delete,
                                  color: Colors.red,
                                  size: 20,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 4),
                        child: Image(
                          height: 150.h,
                          width: 140.w,
                          // fit: BoxFit.cover,
                          image: AssetImage('assets/images/cake4.png'),
                        ),
                      ),
                      Text(
                        'Blue Diamond Cake',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w700,
                          fontSize: 15.sp,
                          color: Color(0xffAB6D23),
                        ),
                      ),
                      Text(
                        'Wedding Cake',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
                          color: Color(0xffAB6D23),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '15,90€',
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w700,
                              fontSize: 12.sp,
                              color: Color(0xffAB6D23),
                            ),
                          ),
                          SizedBox(width: 70.w),
                          Icon(
                            Icons.delete,
                            color: Colors.red,
                            size: 20,
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
