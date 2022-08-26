import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'filter_screen.dart';

class RatingAndReviewsPage extends StatefulWidget {
  const RatingAndReviewsPage({Key? key}) : super(key: key);

  @override
  State<RatingAndReviewsPage> createState() => _RatingAndReviewsPageState();
}

class _RatingAndReviewsPageState extends State<RatingAndReviewsPage> {
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    const Color kBrownColor = Color(0xff51050F);

    TextStyle kTitleStyle = GoogleFonts.roboto(
      color: kBrownColor,
      fontSize: 18.sp,
      fontWeight: FontWeight.w700,
    );

    double rating = 5.0;
    int noOfRating = 20;

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
          // ignore: prefer_const_constructors
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
              backgroundImage: const AssetImage('assets/images/person.png'),
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            padding:
                const EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 0),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            '4.5',
                            style: GoogleFonts.roboto(
                                fontSize: 44.sp,
                                fontWeight: FontWeight.w100,
                                fontStyle: FontStyle.italic),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            '23 Notes',
                            style: GoogleFonts.roboto(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xff9b9b9b)),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Column(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: List.generate(
                              5,
                              (index) => Row(
                                children: List.generate(
                                    5 - index,
                                    (i) => const Icon(
                                          Icons.star,
                                          color: Colors.orangeAccent,
                                          size: 20,
                                        )),
                              ),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: List.generate(
                                5,
                                (i) => SizedBox(
                                      height: 20,
                                      child: Container(
                                        margin: const EdgeInsets.all(5),
                                        height: 10,
                                        width: 100 - (i * 22),
                                        decoration: BoxDecoration(
                                          color: const Color(0xff51050F),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                    )),
                          )
                        ],
                      ),
                      const Spacer(
                        flex: 2,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
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
                  Visibility(
                    visible: isChecked==false,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        Badge(
                          position: BadgePosition.topStart(top: -20, start: -20),
                          elevation: 0,
                          badgeColor: Colors.transparent,
                          badgeContent: const CircleAvatar(
                            backgroundImage: AssetImage('assets/images/person.png'),
                          ),
                          child: Container(
                            padding:
                                const EdgeInsets.only(top: 30, left: 8, right: 8),
                            height: 257.h,
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
                                      fontSize: 14.sp, fontWeight: FontWeight.w100),
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
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    const Icon(Icons.thumb_up_rounded,
                                        color: Color(0xff9B9B9B)),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Badge(
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
                                const EdgeInsets.only(top: 30, left: 8, right: 8),
                            height: 257.h,
                            width: 311.w,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Helene Moore',
                                  style: GoogleFonts.roboto(
                                      fontSize: 14.sp, fontWeight: FontWeight.w100),
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
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    const Icon(Icons.thumb_up_rounded,
                                        color: Color(0xff9B9B9B)),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Badge(
                          position: BadgePosition.topStart(top: -20, start: -20),
                          elevation: 0,
                          badgeColor: Colors.transparent,
                          badgeContent: const CircleAvatar(
                            backgroundImage: AssetImage('assets/images/person.png'),
                          ),
                          child: Container(
                            padding:
                                const EdgeInsets.only(top: 30, left: 8, right: 8),
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
                            height: 257.h,
                            width: 311.w,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Helene Moore',
                                  style: GoogleFonts.roboto(
                                      fontSize: 14.sp, fontWeight: FontWeight.w100),
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
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    const Icon(Icons.thumb_up_rounded,
                                        color: Color(0xff9B9B9B)),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Visibility(
                      visible: isChecked==true,
                      child: Column(children: [
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
                  ],))
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0.0,
            child: Container(
              height: 155.h,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.white.withOpacity(0.0), Colors.white]),
                // color: Colors.white.withOpacity(0.8),
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {

            showModalBottomSheet<dynamic>(
              isScrollControlled: true,
              backgroundColor: Colors.transparent,
              context: context,
              builder: (BuildContext bc) {
                return Container(
                  height: MediaQuery.of(context).size.height / 1.2,
                  decoration: const BoxDecoration(
                    color: Color(0xfff9f9f9),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(34.0),
                      topRight: Radius.circular(34.0),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 6.h,
                          width: 60.w,
                          decoration: BoxDecoration(
                            color: const Color(0xff9b9b9b),
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                        const Text('Quelle note attribuez-vous?',style: TextStyle(color:Colors.grey),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.star_outline_rounded,
                              size: 40,
                              color: Color(0xff9b9b9b),
                            ),
                            Icon(
                              Icons.star_border_rounded,
                              size: 40,
                              color: Color(0xff9b9b9b),
                            ),
                            Icon(
                              Icons.star_border_rounded,
                              size: 40,
                              color: Color(0xff9b9b9b),
                            ),
                            Icon(
                              Icons.star_border_rounded,
                              size: 40,
                              color: Color(0xff9b9b9b),
                            ),
                            Icon(
                              Icons.star_border_rounded,
                              size: 40,
                              color: Color(0xff9b9b9b),
                            ),
                          ],
                        ),
                        const Text('Partagez votre opinion sur ce chef Gloot',style: TextStyle(color:Colors.grey),),
                        Container(
                          padding: const EdgeInsets.all(16),
                          height: 150.h,
                          width: 340.w,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade200,
                                spreadRadius: 4,
                                blurRadius: 5,
                                offset: const Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: const Text('Votre avis',style: TextStyle(color:Colors.grey),),
                        ),
                        Row(
                          children: [
                            Container(
                              height: 104.h,
                              width: 104.w,
                              color: const Color(0xffffffff).withOpacity(0.2),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  CircleAvatar(
                                    radius: 26.r,
                                    backgroundColor: const Color(0xff6DD3E1),
                                    child: const Icon(
                                      Icons.camera_alt_rounded,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const Text(
                                    'Ajoutez vos photos',
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                            const Spacer(),
                          ],
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.8,
                          height: 48.h,
                          child: ElevatedButton(
                            onPressed: () {
                            },
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.r),
                              ),
                              primary: const Color(0xff6DD3E1),
                            ),
                            child: const Text('Envoyer avis'),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );


        },
        label: Text(
          'Laisser un avis',
          style: GoogleFonts.roboto(
            color: Colors.black,
          ),
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
