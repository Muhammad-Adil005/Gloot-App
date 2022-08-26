import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'SignupScreen.dart';

class welcome_Screen extends StatefulWidget {
  const welcome_Screen({Key? key}) : super(key: key);

  @override
  State<welcome_Screen> createState() => _welcome_ScreenState();
}

class _welcome_ScreenState extends State<welcome_Screen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return                   Scaffold(
      body: Container(
        child: Column(
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
            SizedBox(height: 50.h),
            Container(
              width: 344.w,
              // height: 118.h,
              child: Column(
                children: [
                  Text(
                    'Félicitations!',
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w700,
                      fontSize: 34.sp,
                      color: Color(0xff51050F),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50.h),
            Container(
              width: 344.w,
              //height: 118.h,
              child: Column(
                children: [
                  Text(
                    'Votre commande a bien été effectuée et le chef',
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp,
                      color: Color(0xff51050F),
                    ),
                  ),
                  Text(
                    'Gloot vous contactera prochainement.',
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp,
                      color: Color(0xff51050F),
                    ),
                  ),
                  SizedBox(height: 25.h),
                  Text(
                    'Merci d\'avoir accordé votre confiance à Gloot.',
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp,
                      color: Color(0xff51050F),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
    ;
  }
}
