import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Sign_Up_Successful.dart';
import 'clients_review.dart';

class SingleProductPage extends StatefulWidget {
  const SingleProductPage({Key? key}) : super(key: key);

  @override
  State<SingleProductPage> createState() => _SingleProductPageState();
}

class _SingleProductPageState extends State<SingleProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 30.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.arrow_back_ios_outlined,
                        size: 40.sp,
                      ),
                      Icon(
                        Icons.work_outline_outlined,
                        size: 40.sp,
                      ),
                    ],
                  ),
                ),
                Image(
                  //height: 350.h,
                  width: 750.w,
                  image: AssetImage('assets/images/cake1.png'),
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Blue Diamond',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w700,
                          fontSize: 25.sp,
                          fontStyle: FontStyle.italic,
                          color: Color(0xff51050F),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.w, right: 30.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Wedding Cake',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w300,
                          fontSize: 12.sp,
                          color: Color(0xff51050F),
                        ),
                      ),
                      SizedBox(width: 90.w),
                      Row(
                        children: [
                          Container(
                            height: 22.h,
                            width: 22.w,
                            decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              borderRadius: BorderRadius.circular(2),
                            ),
                            child: Center(
                              child: Text(
                                '+',
                                style: GoogleFonts.roboto(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10.w),
                          Text(
                            '2',
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w500,
                              fontSize: 18.sp,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(width: 10.w),
                          Container(
                            height: 22.h,
                            width: 22.w,
                            decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              borderRadius: BorderRadius.circular(2),
                            ),
                            child: Center(
                              child: Text(
                                '-',
                                style: GoogleFonts.roboto(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.w, top: 10.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Price of Slice:   \$10.500',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w700,
                          fontSize: 18.sp,
                          fontStyle: FontStyle.italic,
                          color: Color(0xff51050F),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.w, top: 10.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Lorem ipsum dolor sit amet, consectetur elit.',
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w400,
                              fontSize: 15.sp,
                              //fontStyle: FontStyle.italic,
                              color: Color(0xff51050F),
                            ),
                          ),
                          Text(
                            ' Cursus faucibus volutpat curabitur mauris',
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w400,
                              fontSize: 15.sp,
                              //fontStyle: FontStyle.italic,
                              color: Color(0xff51050F),
                            ),
                          ),
                          Text(
                            ' lobortis. Praesent nulla in placerat amet,',
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w400,
                              fontSize: 15.sp,
                              //fontStyle: FontStyle.italic,
                              color: Color(0xff51050F),
                            ),
                          ),
                          Text(
                            'diam arcu augue morbi id.',
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w400,
                              fontSize: 15.sp,
                              //fontStyle: FontStyle.italic,
                              color: Color(0xff51050F),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20.h, right: 20.w, left: 20.w),
                  child: Row(
                    children: [
                      Container(
                        height: 36.h,
                        width: 145.w,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10.w),
                              child: Icon(
                                Icons.description,
                                size: 15.sp,
                                color: Colors.grey.shade400,
                              ),
                            ),
                            SizedBox(width: 5.w),
                            Text(
                              'Description',
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                fontSize: 12.sp,
                                color: Colors.grey.shade400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10.w),
                      Container(
                        height: 36.h,
                        width: 167.w,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10.w),
                              child: Icon(
                                Icons.camera_alt,
                                size: 15.sp,
                                color: Colors.grey.shade400,
                              ),
                            ),
                            SizedBox(width: 8.w),
                            Text(
                              'Télécharger vos photos',
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                fontSize: 12.sp,
                                color: Colors.grey.shade400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30.h),
                Padding(
                  padding: EdgeInsets.only(top: 20.h, left: 20.w, right: 30.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            'Prix',
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w300,
                              fontSize: 15.sp,
                              color: Color(0xff51050F),
                            ),
                          ),
                          SizedBox(height: 2.h),
                          Text(
                            '15,90€',
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w500,
                              fontSize: 15.sp,
                              color: Color(0xff51050F),
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                        },
                        child: Container(
                          height: 39.h,
                          width: 122.w,
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(9),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(
                                Icons.account_balance_outlined,
                                size: 20.sp,
                                color: Color(0xff51050F),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 20.w),
                                child: Text(
                                  'Panier',
                                  style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15.sp,
                                    color: Color(0xff51050F),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
