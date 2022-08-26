import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'SignupScreen.dart';

class onborading extends StatefulWidget {
  const onborading({Key? key}) : super(key: key);

  @override
  State<onborading> createState() => _onboradingState();
}

class _onboradingState extends State<onborading> {
  PageController controller = new PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.8,
              child: PageView(
                controller: controller,
                children: [
                  Container(
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
                        SizedBox(height: 20.h),
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
                        SizedBox(height: 20.h),
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
                      ],
                    ),
                  ),
                  Container(
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
                                'Votre commande a bien été effectuée  et le chef!',
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
                                'Merci d\'avoir accordé votre confiance à Gloot',
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
                ],
              ),
            ),
            SmoothPageIndicator(
              controller: controller,
              count: 2,
              axisDirection: Axis.horizontal,
              effect: SlideEffect(
                  spacing: 8.0,
                  radius: 100.0,
                  dotWidth: 16.0,
                  dotHeight: 16.0,
                  paintStyle: PaintingStyle.stroke,
                  strokeWidth: 1.5,
                  dotColor: Colors.grey,
                  activeDotColor: Colors.brown),
            ),
            SizedBox(height: 50.h),
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
