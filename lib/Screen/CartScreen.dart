import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glootapp/Screen/welcome_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class CartScreenPage extends StatefulWidget {
  const CartScreenPage({Key? key}) : super(key: key);

  @override
  State<CartScreenPage> createState() => _CartScreenPageState();
}

class _CartScreenPageState extends State<CartScreenPage> {
  @override
  Widget build(BuildContext context) {
    //const Color kBrownColor = Color(0xff51050F);

    TextStyle kTitleStyle = GoogleFonts.roboto(
      color: Color(0xff51050F),
      fontSize: 20.sp,
      fontWeight: FontWeight.w700,
    );

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: 812.h,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(height: 5.h),
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
                          'Mon panier',
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w700,
                            fontSize: 20.sp,
                            color: Color(0xff51050F),
                          ),
                        ),
                        SizedBox(width: 20.w),
                        Image(
                          image: AssetImage('assets/images/Notification.png'),
                        ),
                        Image(
                          image: AssetImage('assets/images/person.png'),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: 20.h, left: 20.w, right: 20.w),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      height: 100.h,
                      width: 343.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/cake1.png'),
                          ),
                          SizedBox(width: 30.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 12.h),
                                child: Text(
                                  'Blue Diamond',
                                  style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20.sp,
                                    color: Color(0xff51050F),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10.h),
                              Row(
                                children: [
                                  Text(
                                    '15,90€',
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18.sp,
                                      color: Color(0xff51050F),
                                    ),
                                  ),
                                  SizedBox(width: 60.w),
                                  Container(
                                    height: 33.h,
                                    width: 16.w,
                                    color: Colors.white,
                                    child: Text(
                                      '-',
                                      style: GoogleFonts.roboto(
                                        color: Colors.yellow,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 25.sp,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10.w),
                                  Text(
                                    '1',
                                    style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18.sp,
                                    ),
                                  ),
                                  SizedBox(width: 10.w),
                                  Container(
                                    height: 33.h,
                                    width: 16.w,
                                    color: Colors.white,
                                    child: Text(
                                      '+',
                                      style: GoogleFonts.roboto(
                                        color: Colors.yellow,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 25.sp,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: 20.h, left: 20.w, right: 20.w),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      height: 100.h,
                      width: 343.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/cake3.png'),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 12.h),
                                child: Text(
                                  'Black Chocolate',
                                  style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20.sp,
                                    color: Color(0xff51050F),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10.h),
                              Row(
                                children: [
                                  Text(
                                    '11,90€',
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18.sp,
                                      color: Color(0xff51050F),
                                    ),
                                  ),
                                  SizedBox(width: 60.w),
                                  Container(
                                    height: 33.h,
                                    width: 16.w,
                                    color: Colors.white,
                                    child: Text(
                                      '-',
                                      style: GoogleFonts.roboto(
                                        color: Colors.yellow,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 25.sp,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10.w),
                                  Text(
                                    '1',
                                    style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18.sp,
                                    ),
                                  ),
                                  SizedBox(width: 10.w),
                                  Container(
                                    height: 33.h,
                                    width: 16.w,
                                    color: Colors.white,
                                    child: Text(
                                      '+',
                                      style: GoogleFonts.roboto(
                                        color: Colors.yellow,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 25.sp,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: 20.h, left: 20.w, right: 20.w),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      height: 100.h,
                      width: 343.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/cake4.png'),
                          ),
                          SizedBox(width: 40.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 12.h),
                                child: Text(
                                  'Vanilla Cake',
                                  style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20.sp,
                                    color: Color(0xff51050F),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10.h),
                              Row(
                                children: [
                                  Text(
                                    '19,90€',
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18.sp,
                                      color: Color(0xff51050F),
                                    ),
                                  ),
                                  SizedBox(width: 60.w),
                                  Container(
                                    height: 33.h,
                                    width: 16.w,
                                    color: Colors.white,
                                    child: Text(
                                      '-',
                                      style: GoogleFonts.roboto(
                                        color: Colors.yellow,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 25.sp,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10.w),
                                  Text(
                                    '2',
                                    style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18.sp,
                                    ),
                                  ),
                                  SizedBox(width: 10.w),
                                  Container(
                                    height: 33.h,
                                    width: 16.w,
                                    color: Colors.white,
                                    child: Text(
                                      '+',
                                      style: GoogleFonts.roboto(
                                        color: Colors.yellow,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 25.sp,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Column(
                children: [
                  Text(
                    'Total de la commande: €24',
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w700,
                      fontSize: 20.sp,
                      color: Color(0xff51050F),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  GestureDetector(
                    onTap: () {
                      _settingModalBottomSheet(context);
                    },
                    child: Container(
                      height: 39.h,
                      width: 202.w,
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(9),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.wallet_travel,
                            size: 20.sp,
                            color: Color(0xff51050F),
                          ),
                          Text(
                            'Passer la commande',
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w500,
                              fontSize: 15.sp,
                              color: Color(0xff51050F),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Container(
                    height: 39.h,
                    width: 202.w,
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(9),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.insert_chart_outlined_outlined,
                          size: 20.sp,
                          color: Color(0xff51050F),
                        ),
                        Text(
                          'Ajouter des instructions',
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w500,
                            fontSize: 15.sp,
                            color: Color(0xff51050F),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.h),
            ],
          ),
        ),
      ),
    );
  }

  void _settingModalBottomSheet(context) {
    showModalBottomSheet<dynamic>(
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      context: context,
      builder: (BuildContext bc) {
        return Container(
          height: MediaQuery.of(context).size.height / 1.5,
          decoration: BoxDecoration(
            color: Color(0xfff9f9f9),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(34.0),
              topRight: Radius.circular(34.0),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 16.h),
            child: Column(
              children: [
                SizedBox(height: 20.h),
                Text(
                  'Finaliser la commande',
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w500,
                    fontSize: 18.sp,
                    color: Color(0xff51050F),
                  ),
                ),
                SizedBox(height: 40.h),
                Padding(
                  padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 10.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Paiement',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                          color: Color(0xff222222),
                        ),
                      ),
                      Text(
                        'Modifier',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                          color: Color(0xff6DD3E1),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(
                          vertical: 20.h, horizontal: 30.w),
                      height: 38.h,
                      width: 64.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Image(
                        image: AssetImage('assets/images/mas.jpg'),
                      ),
                    ),
                    SizedBox(width: 20.w),
                    Text(
                      '**** **** **** 3947',
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w400,
                        fontSize: 14.sp,
                        color: Color(0xff222222),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.h, horizontal: 30.w),
                  child: Row(
                    children: [
                      Icon(Icons.padding),
                      SizedBox(width: 10.w),
                      Text(
                        'Ajouter une carte de crédit',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp,
                          color: Color(0xff51050F),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 30.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sous-total:',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          fontSize: 15.sp,
                          color: Color(0xff9B9B9B),
                        ),
                      ),
                      Text(
                        '1,90€',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w600,
                          fontSize: 18.sp,
                          color: Color(0xff222222),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 15.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Frais de service (10%)',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          fontSize: 15.sp,
                          color: Color(0xff9B9B9B),
                        ),
                      ),
                      Text(
                        '10€',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w600,
                          fontSize: 18.sp,
                          color: Color(0xff222222),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 15.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total:',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          fontSize: 15.sp,
                          color: Color(0xff9B9B9B),
                        ),
                      ),
                      Text(
                        '1,90€',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w600,
                          fontSize: 18.sp,
                          color: Color(0xff222222),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 70.h),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => welcome_Screen()));
                  },
                  child: Container(
                    height: 56.h,
                    width: 327.w,
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Text(
                        'Payer',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
