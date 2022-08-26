import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glootapp/Screen/EditProfile.dart';
import 'package:glootapp/Screen/SellerProfile.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Notifications.dart';
import 'VendorProfile.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(12),
                      prefixIcon: Icon(Icons.location_on),
                      hintStyle: GoogleFonts.roboto(
                        fontWeight: FontWeight.w400,
                        fontSize: 14.sp,
                        color: Color(0xffA7A9B7),
                      ),
                      fillColor: Color(0xffF2F2F2),
                      filled: true,
                      border: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Color(0xffF3F3F3), width: 1),
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Color(0xffF3F3F3), width: 1),
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Color(0xffF3F3F3), width: 1),
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                      hintText: 'Entrez votre adresse',
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20.w, right: 20.w, top: 15.h),
                  child: Row(
                    children: [
                      Text(
                        'Rechercher',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w600,
                          fontSize: 16.sp,
                          color: Color(0xff51050F),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 15.h),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(12),
                      prefixIcon: Icon(Icons.search),
                      hintStyle: GoogleFonts.roboto(
                        fontWeight: FontWeight.w400,
                        fontSize: 14.sp,
                        color: Color(0xffA7A9B7),
                      ),
                      fillColor: Color(0xffF2F2F2),
                      filled: true,
                      border: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Color(0xffF3F3F3), width: 1),
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Color(0xffF3F3F3), width: 1),
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Color(0xffF3F3F3), width: 1),
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                      hintText: 'Recherche par mot clé',
                    ),
                  ),
                ),
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
