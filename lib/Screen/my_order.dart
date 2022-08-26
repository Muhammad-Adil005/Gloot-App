import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'my_sales.dart';

class MyOrders extends StatefulWidget {
  const MyOrders({Key? key}) : super(key: key);

  @override
  State<MyOrders> createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {
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
            GestureDetector(
              onTap:(){
                Navigator.pop(context);
              },child: Container(
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
            ),
          ],
        ),
        title: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MySales()),
            );
          },
          child: Text(
            'Mes commandes',
            style: GoogleFonts.dmSans(
              fontWeight: FontWeight.w700,
              fontSize: 20,
              color: const Color(0xff51050F),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 10,
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
