import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class MySales extends StatefulWidget {
  const MySales({Key? key}) : super(key: key);

  @override
  State<MySales> createState() => _MySalesState();
}

class _MySalesState extends State<MySales> {
  int items = 5;
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 70,
        centerTitle: true,
        leading: Row(
          children: [
            const SizedBox(
              width: 5,
              height: 5,
            ),
            Container(
              height: 45.h,
              width: 45.w,
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0xffF1F1F5),
                ),
                borderRadius: BorderRadius.circular(100),
              ),
              child: const Icon(
                Icons.arrow_back_ios_new,
                color: Colors.black,
              ),
            ),
          ],
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Mes ventes',
              style: GoogleFonts.dmSans(
                fontWeight: FontWeight.w700,
                fontSize: 20,
                color: const Color(0xff51050F),
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            const Icon(
              Icons.calendar_today_outlined,
              color: Color(0xff6DD3E1),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: items,
              itemBuilder: (_, index) {
                return Column(
                  children: [
                    const MyListTile(),
                    index == items - 1
                        ? Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Container(
                              height: 88.h,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color:
                                    const Color(0xff6DD3E1).withOpacity(0.06),
                                borderRadius: BorderRadius.circular(30.r),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    'Total ventes:',
                                    style: GoogleFonts.roboto(
                                      color: const Color(0xff51050F),
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Text(
                                    'S70',
                                    style: GoogleFonts.roboto(
                                      color: const Color(0xff51050F),
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        : const SizedBox(),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class MyListTile extends StatelessWidget {
  const MyListTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          dense: true,
          visualDensity: const VisualDensity(vertical: 4),
          leading: Container(
            height: 48.h,
            width: 48.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13.r),
              image: const DecorationImage(
                image: AssetImage('assets/images/cake.png'),
              ),
            ),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Blue Diamond Cake',
                style: GoogleFonts.roboto(
                  color: const Color(0xffAB6D23),
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                'Wedding Cake',
                style: GoogleFonts.roboto(
                  color: const Color(0xffAB6D23),
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                '\$7.000',
                style: GoogleFonts.roboto(
                  color: const Color(0xffAB6D23),
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          trailing: Text(
            'Date: 8-04-2022',
            style: GoogleFonts.roboto(
              color: const Color(0xff51050F),
              fontSize: 15.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        SizedBox(
          height: 15.h,
        )
      ],
    );
  }
}
