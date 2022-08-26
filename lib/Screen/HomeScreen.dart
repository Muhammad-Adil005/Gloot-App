import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glootapp/Screen/EditProfile.dart';
import 'package:glootapp/Screen/SellerProfile.dart';
import 'package:glootapp/Screen/searchPage.dart';
import 'package:google_fonts/google_fonts.dart';

import 'CustomerProfile.dart';
import 'Notifications.dart';
import 'VendorProfile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey<ScaffoldState> key=new GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key:key,
      backgroundColor: Colors.white,
      endDrawer:CustomerProfilePage(),
      drawer: SearchPage(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(height: 20.h),
                Padding(
                  padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 10.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: (){
                         // key.currentState!.openDrawer();
                        },
                        child: Image(
                          image: AssetImage('assets/images/Rectangle.png'),
                        ),
                      ),
                      Text(
                        'Les chefs Gloot',
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
                      InkWell(
                        onTap: (){
                          key.currentState!.openEndDrawer();
                        },child: Image(
                          image: AssetImage('assets/images/person.png'),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.h),
                Container(
                  margin: EdgeInsets.only(left: 30.w, right: 20.w, top: 20.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Gateaux',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          fontSize: 12.sp,
                          color: Color(0xffAB6D23),
                        ),
                      ),
                      Text(
                        'Cake pops',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          fontSize: 12.sp,
                          color: Color(0xffAB6D23),
                        ),
                      ),
                      Text(
                        'Cupcakes',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          fontSize: 12.sp,
                          color: Color(0xffAB6D23),
                        ),
                      ),
                      Text(
                        'Sablés',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          fontSize: 12.sp,
                          color: Color(0xffAB6D23),
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            'Tout voir',
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w300,
                              fontSize: 9.sp,
                              color: Color(0xffAB6D23),
                            ),
                          ),
                          SizedBox(width: 2.w),
                          Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 10.sp,
                            color: Color(0xffAB6D23),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(top: 20.h, left: 30.w),
                  child: Text(
                    'Les plus commandés',
                    style: GoogleFonts.roboto(
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff51050F),
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Container(
                      child: GridView.count(
                        physics: NeverScrollableScrollPhysics(),
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        shrinkWrap: true,
                        childAspectRatio: 0.85,
                        padding: EdgeInsets.all(10),
                        children: List.generate(
                          4,
                          (index) {
                            return Container(
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: Color(0xffF3F5F7),
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 10.h),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  SellerProfilePage()),
                                        );
                                      },
                                      child: Image(
                                        image: AssetImage(
                                            'assets/images/andrewpic.png'),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 2.h),
                                  Text(
                                    'Andrew K',
                                    style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14.sp,
                                      color: Color(0xff1B1C1E),
                                    ),
                                  ),
                                  SizedBox(height: 2.h),
                                  Text(
                                    '200 mètres ',
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 8.sp,
                                      color: Color(0xff1B1C1E),
                                    ),
                                  ),
                                  SizedBox(height: 2.h),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image(
                                        image: AssetImage(
                                            'assets/images/star.png'),
                                      ),
                                      SizedBox(width: 5.w),
                                      Text(
                                        '5.0(145)',
                                        style: GoogleFonts.roboto(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 8.sp,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 5.h),
                                  Container(
                                    height: 18,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      color: Theme.of(context).primaryColor,
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Voir',
                                        style: GoogleFonts.roboto(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 12.sp,
                                          color: Color(0xff51050F),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
