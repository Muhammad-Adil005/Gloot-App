import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glootapp/Screen/SingleProduct.dart';
import 'package:glootapp/Screen/rating_and_reviews.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Allchats.dart';

class SellerProfilePage extends StatefulWidget {
  const SellerProfilePage({Key? key}) : super(key: key);

  @override
  State<SellerProfilePage> createState() => _SellerProfilePageState();
}

class _SellerProfilePageState extends State<SellerProfilePage> {
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
                  width: 375.w,
                  height: 150.h,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.w, right: 20.w),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 30.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image(
                                  image: AssetImage('assets/images/men1.png'),
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(width: 10.w),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 15.sp,
                                        ),
                                        SizedBox(width: 2.w),
                                        Text(
                                          '5.0(145)',
                                          style: GoogleFonts.roboto(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 8.sp,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                AllChatPage()));
                                  },
                                  child: Icon(
                                    Icons.chat,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(width: 5.w),
                                Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                ),
                                SizedBox(width: 5.w),
                                Icon(
                                  Icons.share,
                                  color: Color(0xff6DD3E1),
                                ),
                                SizedBox(width: 5.w),
                                Text(
                                  'Share',
                                  style: GoogleFonts.dmSans(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 10.sp,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        RatingAndReviewsPage()));
                              },
                              child: Container(
                                width: 100,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 10),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(100)),
                                child: Center(
                                    child: Text(
                                  'Reviews',
                                  style: TextStyle(
                                    color: Colors.blueGrey,
                                  ),
                                )),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(20),
                      child: Text(
                        'Mes créations',
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w700,
                          fontSize: 24.sp,
                          color: Color(0xff06161C),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SingleProductPage()),
                            );
                          },
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '15,90€',
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 12.sp,
                                      color: Color(0xffAB6D23),
                                    ),
                                  ),
                                  SizedBox(width: 60.w),
                                  Container(
                                    height: 14.h,
                                    width: 14.w,
                                    decoration: BoxDecoration(
                                      color: Theme.of(context).primaryColor,
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                    child: Center(
                                      child: Text(
                                        '+',
                                        style: GoogleFonts.roboto(
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 5.w),
                                  Container(
                                    height: 14.h,
                                    width: 14.w,
                                    decoration: BoxDecoration(
                                      color: Theme.of(context).primaryColor,
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                    child: Center(
                                      child: Text(
                                        '-',
                                        style: GoogleFonts.roboto(
                                          fontSize: 15.sp,
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
                            SizedBox(width: 60.w),
                            Container(
                              height: 14.h,
                              width: 14.w,
                              decoration: BoxDecoration(
                                color: Theme.of(context).primaryColor,
                                borderRadius: BorderRadius.circular(2),
                              ),
                              child: Center(
                                child: Text(
                                  '+',
                                  style: GoogleFonts.roboto(
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 5.w),
                            Container(
                              height: 14.h,
                              width: 14.w,
                              decoration: BoxDecoration(
                                color: Theme.of(context).primaryColor,
                                borderRadius: BorderRadius.circular(2),
                              ),
                              child: Center(
                                child: Text(
                                  '-',
                                  style: GoogleFonts.roboto(
                                    fontSize: 15.sp,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '15,90€',
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 12.sp,
                                      color: Color(0xffAB6D23),
                                    ),
                                  ),
                                  SizedBox(width: 60.w),
                                  Container(
                                    height: 14.h,
                                    width: 14.w,
                                    decoration: BoxDecoration(
                                      color: Theme.of(context).primaryColor,
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                    child: Center(
                                      child: Text(
                                        '+',
                                        style: GoogleFonts.roboto(
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 5.w),
                                  Container(
                                    height: 14.h,
                                    width: 14.w,
                                    decoration: BoxDecoration(
                                      color: Theme.of(context).primaryColor,
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                    child: Center(
                                      child: Text(
                                        '-',
                                        style: GoogleFonts.roboto(
                                          fontSize: 15.sp,
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
                            SizedBox(width: 60.w),
                            Container(
                              height: 14.h,
                              width: 14.w,
                              decoration: BoxDecoration(
                                color: Theme.of(context).primaryColor,
                                borderRadius: BorderRadius.circular(2),
                              ),
                              child: Center(
                                child: Text(
                                  '+',
                                  style: GoogleFonts.roboto(
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 5.w),
                            Container(
                              height: 14.h,
                              width: 14.w,
                              decoration: BoxDecoration(
                                color: Theme.of(context).primaryColor,
                                borderRadius: BorderRadius.circular(2),
                              ),
                              child: Center(
                                child: Text(
                                  '-',
                                  style: GoogleFonts.roboto(
                                    fontSize: 15.sp,
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
