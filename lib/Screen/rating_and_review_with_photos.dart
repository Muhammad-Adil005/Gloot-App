import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class RatingAndReviewWithPhotosPage extends StatefulWidget {
  const RatingAndReviewWithPhotosPage({Key? key}) : super(key: key);

  @override
  State<RatingAndReviewWithPhotosPage> createState() =>
      _RatingAndReviewWithPhotosPageState();
}

class _RatingAndReviewWithPhotosPageState
    extends State<RatingAndReviewWithPhotosPage> {
  bool? isChecked = true;
  @override
  Widget build(BuildContext context) {
    const Color kBrownColor = Color(0xff51050F);

    TextStyle kTitleStyle = GoogleFonts.roboto(
      color: kBrownColor,
      fontSize: 18.sp,
      fontWeight: FontWeight.w700,
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Image.asset('assets/icons/categories.png'),
        title: Text(
          'Notes et avis',
          style: kTitleStyle,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            // ignore: prefer_const_constructors
            child: Icon(
              size: 35,
              color: const Color(0xffFFD700),
              Icons.notifications_active,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: CircleAvatar(
              radius: 20.r,
              backgroundImage: AssetImage('assets/images/person.png'),
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 24.0),
                        child: Text(
                          '8 Avis',
                          style: GoogleFonts.roboto(
                              color: const Color(0xff222222),
                              fontSize: 24.sp,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w100),
                        ),
                      ),
                      const Spacer(),
                      Checkbox(
                          activeColor: Colors.black,
                          value: isChecked,
                          onChanged: (newValue) {
                            setState(() {
                              isChecked = newValue;
                            });
                          }),
                      Text(
                        'Avec Photo',
                        style: GoogleFonts.roboto(
                          fontSize: 14.sp,
                          color: const Color(0xff222222),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 24.0),
                    child: Badge(
                      position: BadgePosition.topStart(top: -20, start: -20),
                      elevation: 0,
                      badgeColor: Colors.transparent,
                      badgeContent: const CircleAvatar(
                        backgroundImage: AssetImage('assets/images/person.png'),
                      ),
                      child: Container(
                        padding:
                            const EdgeInsets.only(top: 24, left: 8, right: 8),
                        height: 357.h,
                        width: 311.w,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: const Offset(
                                  0, 3), // changes position of shadow
                            ),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Helene Moore',
                              style: GoogleFonts.roboto(
                                  fontStyle: FontStyle.italic,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w100),
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: Color(0xffFFBA49),
                                ),
                                const Icon(
                                  Icons.star,
                                  color: Color(0xffFFBA49),
                                ),
                                const Icon(
                                  Icons.star,
                                  color: Color(0xffFFBA49),
                                ),
                                const Icon(
                                  Icons.star,
                                  color: Color(0xffFFBA49),
                                ),
                                const Icon(
                                  Icons.star_outline,
                                  color: Color(0xff9b9b9b),
                                ),
                                const Spacer(),
                                Text(
                                  '5 Juin 2022',
                                  style: GoogleFonts.roboto(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xff9B9B9B),
                                  ),
                                )
                              ],
                            ),
                            Text(
                              'The dress is great! Very classy and comfortable. It fit perfectly! I\'m 5\'7" and 130 pounds. I am a 34B chest. This dress would be too long for those who are shorter but could be hemmed. I wouldn\'t recommend it for those big chested as I am smaller chested and it fit me perfectly. The underarms were not too wide and the dress was made well.',
                              style: GoogleFonts.roboto(
                                  fontSize: 14.sp, fontWeight: FontWeight.w400),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'utile',
                                  style: GoogleFonts.roboto(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xff9B9B9B),
                                  ),
                                ),
                                const Icon(Icons.thumb_up_rounded,
                                    color: Color(0xff9B9B9B)),
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/cake.png',
                                  height: 100.h,
                                  width: 100.h,
                                ),
                                Image.asset(
                                  'assets/images/cake.png',
                                  height: 100.h,
                                  width: 100.h,
                                ),
                                Image.asset(
                                  'assets/images/cake.png',
                                  height: 100.h,
                                  width: 100.h,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 24.0),
                    child: Badge(
                      position: BadgePosition.topStart(top: -20, start: -20),
                      elevation: 0,
                      badgeColor: Colors.transparent,
                      badgeContent: const CircleAvatar(
                        backgroundImage: AssetImage('assets/images/person.png'),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: const Offset(
                                  0, 3), // changes position of shadow
                            ),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                        padding:
                            const EdgeInsets.only(top: 24, left: 8, right: 8),
                        height: 357.h,
                        width: 311.w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Helene Moore',
                              style: GoogleFonts.roboto(
                                  fontStyle: FontStyle.italic,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w100),
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: Color(0xffFFBA49),
                                ),
                                const Icon(
                                  Icons.star,
                                  color: Color(0xffFFBA49),
                                ),
                                const Icon(
                                  Icons.star,
                                  color: Color(0xffFFBA49),
                                ),
                                const Icon(
                                  Icons.star,
                                  color: Color(0xffFFBA49),
                                ),
                                const Icon(
                                  Icons.star_outline,
                                  color: Color(0xff9b9b9b),
                                ),
                                const Spacer(),
                                Text(
                                  '5 Juin 2022',
                                  style: GoogleFonts.roboto(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xff9B9B9B),
                                  ),
                                )
                              ],
                            ),
                            Text(
                              'The dress is great! Very classy and comfortable. It fit perfectly! I\'m 5\'7" and 130 pounds. I am a 34B chest. This dress would be too long for those who are shorter but could be hemmed. I wouldn\'t recommend it for those big chested as I am smaller chested and it fit me perfectly. The underarms were not too wide and the dress was made well.',
                              style: GoogleFonts.roboto(
                                  fontSize: 14.sp, fontWeight: FontWeight.w400),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'utile',
                                  style: GoogleFonts.roboto(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xff9B9B9B),
                                  ),
                                ),
                                const Icon(Icons.thumb_up_rounded,
                                    color: Color(0xff9B9B9B)),
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/cake.png',
                                  height: 100.h,
                                  width: 100.h,
                                ),
                                Image.asset(
                                  'assets/images/cake.png',
                                  height: 100.h,
                                  width: 100.h,
                                ),
                                Image.asset(
                                  'assets/images/cake.png',
                                  height: 100.h,
                                  width: 100.h,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: .0),
                    child: Badge(
                      position: BadgePosition.topStart(top: -20, start: -20),
                      elevation: 0,
                      badgeColor: Colors.transparent,
                      badgeContent: const CircleAvatar(
                        backgroundImage: AssetImage('assets/images/person.png'),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: const Offset(
                                  0, 3), // changes position of shadow
                            ),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                        padding:
                            const EdgeInsets.only(top: 24, left: 8, right: 8),
                        height: 357.h,
                        width: 311.w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Helene Moore',
                              style: GoogleFonts.roboto(
                                  fontStyle: FontStyle.italic,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w100),
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: Color(0xffFFBA49),
                                ),
                                const Icon(
                                  Icons.star,
                                  color: Color(0xffFFBA49),
                                ),
                                const Icon(
                                  Icons.star,
                                  color: Color(0xffFFBA49),
                                ),
                                const Icon(
                                  Icons.star,
                                  color: Color(0xffFFBA49),
                                ),
                                const Icon(
                                  Icons.star_outline,
                                  color: Color(0xff9b9b9b),
                                ),
                                const Spacer(),
                                Text(
                                  '5 Juin 2022',
                                  style: GoogleFonts.roboto(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xff9B9B9B),
                                  ),
                                )
                              ],
                            ),
                            Text(
                              'The dress is great! Very classy and comfortable. It fit perfectly! I\'m 5\'7" and 130 pounds. I am a 34B chest. This dress would be too long for those who are shorter but could be hemmed. I wouldn\'t recommend it for those big chested as I am smaller chested and it fit me perfectly. The underarms were not too wide and the dress was made well.',
                              style: GoogleFonts.roboto(
                                  fontSize: 14.sp, fontWeight: FontWeight.w400),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'utile',
                                  style: GoogleFonts.roboto(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xff9B9B9B),
                                  ),
                                ),
                                const Icon(Icons.thumb_up_rounded,
                                    color: Color(0xff9B9B9B)),
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/cake.png',
                                  height: 100.h,
                                  width: 100.h,
                                ),
                                Image.asset(
                                  'assets/images/cake.png',
                                  height: 100.h,
                                  width: 100.h,
                                ),
                                Image.asset(
                                  'assets/images/cake.png',
                                  height: 100.h,
                                  width: 100.h,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
              child: Positioned(
            bottom: 0.0,
            child: Container(
              height: 155.h,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.white.withOpacity(0.0), Colors.white]),
              ),
            ),
          ))
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        elevation: 10,
        onPressed: null,
        label: Text(
          'Laisser un avis',
          style: GoogleFonts.roboto(
              fontSize: 11.sp,
              fontWeight: FontWeight.w700,
              color: const Color(0xff000000)),
        ),
        icon: const Icon(
          Icons.edit,
          color: Colors.black,
        ),
        backgroundColor: const Color.fromRGBO(109, 211, 225, 1),
      ),
    );
  }
}
