import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glootapp/Screen/welcome_screen.dart';
import 'package:google_fonts/google_fonts.dart';

import 'SignupScreen.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 314.h,
              width: 471.w,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/homepage.png'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.only(
                    //topLeft: Radius.circular(20),
                    //topRight: Radius.circular(20),
                    ),
              ),
            ),
            SizedBox(height: 5.h),
            Container(
              width: 344.w,
              height: 118.h,
              child: Column(
                children: [
                  Text(
                    'Faites votre choix',
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w900,
                      fontSize: 25.sp,
                      color: Color(0xff51050F),
                    ),
                  ),
                  Text(
                    'gourmand',
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w900,
                      fontSize: 25.sp,
                      color: Color(0xff51050F),
                    ),
                  ),
                  Text(
                    'et savourez les délices',
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w900,
                      fontSize: 25.sp,
                      color: Color(0xff51050F),
                    ),
                  ),
                  Text(
                    'de nos Chefs“Gloot”.',
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w900,
                      fontSize: 25.sp,
                      color: Color(0xff51050F),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5.h),
            Container(
              height: 76.h,
              width: 304.w,
              child: Column(
                children: [
                  Text(
                    'Sélectionnez de superbes créations',
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400,
                      fontSize: 15.sp,
                      color: Color(0xff51050F),
                    ),
                  ),
                  Text(
                    'personnalisées pour tous vos évènements',
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400,
                      fontSize: 15.sp,
                      color: Color(0xff51050F),
                    ),
                  ),
                  Text(
                    'grâce aux Gloots près de chez vous.',
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400,
                      fontSize: 15.sp,
                      color: Color(0xff51050F),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.h),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Retour',
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w700,
                        fontSize: 17.sp,
                        color: Color(0xff000000),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignupPage()),
                        );
                      },
                      child: Container(
                        height: 46.h,
                        width: 157.w,
                        decoration: BoxDecoration(
                          color: Color(0xff6DD3E1),
                          borderRadius: BorderRadius.circular(34),
                        ),
                        child: Center(
                          child: Text(
                            'Allons y...',
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w700,
                              fontSize: 20.sp,
                              color: Color(0xff51050F),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 5.h),
          ],
        ),
      ),
    );
  }
}
