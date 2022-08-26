import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Mes créations',
          style: GoogleFonts.roboto(
            color: const Color(0xff51050F),
            fontSize: 18.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
        leading: Row(
          children: [
            const SizedBox(
              width: 5,
              // height: 5,
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
        actions: [
          Row(
            children: [
              Container(
                height: 45.h,
                width: 45.w,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xffF1F1F5),
                  ),
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              const SizedBox(
                width: 5,
                height: 5,
              ),
            ],
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (_, index) {
                return const MyListTile();
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
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 32.h,
                width: 100.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(34.r),
                  color: const Color(0xff6DD3E1),
                ),
                child: Center(
                    child: Text(
                  'Suspendre',
                  style: GoogleFonts.roboto(
                    color: const Color(0xff51050F),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w800,
                  ),
                )),
              ),
              Text(
                'Supprimer',
                style: GoogleFonts.roboto(
                  color: const Color(0xff6DD3E1),
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 15.h,
        )
      ],
    );
  }
}
