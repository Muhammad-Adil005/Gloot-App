import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  Widget MyContainer({required IconData icon, required String text}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 12.h),
      height: 46.h,
      width: 327.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          width: 1,
          color: Color(0xffF3F3F3),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 10.w, right: 10.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  icon,
                  color: Colors.red.shade300,
                ),
                SizedBox(width: 10.w),
                Text(
                  text,
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w500,
                    fontSize: 14.sp,
                    color: Color(0xff191D31),
                  ),
                ),
              ],
            ),
            Container(
              height: 20.h,
              width: 20.w,
              decoration: BoxDecoration(
                color: Color(0xff1D272F),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.done,
                color: Colors.white,
                size: 12.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  height: 100.h,
                  width: 700.w,
                  child: Row(
                    children: [
                      Icon(Icons.arrow_back_outlined),
                      SizedBox(width: 20.w),
                      Text(
                        'Modifier profile',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w700,
                          fontSize: 20.sp,
                          color: Color(0xff51050F),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30.h),
                Stack(
                  children: [
                    Container(
                      width: 120.w,
                      height: 120.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/images/men1.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        height: 44.h,
                        width: 44.w,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xff1D272F),
                        ),
                        child: Icon(
                          Icons.camera_alt_outlined,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20.w, top: 20.h),
                      child: Text(
                        'Nom Prenom',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w800,
                          fontSize: 16.sp,
                          color: Color(0xff191D31),
                        ),
                      ),
                    ),
                  ],
                ),
                MyContainer(icon: Icons.person, text: 'Micheal Sam'),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20.w, top: 10.h),
                      child: Text(
                        'Email',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w800,
                          fontSize: 16.sp,
                          color: Color(0xff191D31),
                        ),
                      ),
                    ),
                  ],
                ),
                MyContainer(icon: Icons.call, text: 'micheal@gmail.com'),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20.w, top: 10.h),
                      child: Text(
                        'Adresse',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w800,
                          fontSize: 16.sp,
                          color: Color(0xff191D31),
                        ),
                      ),
                    ),
                  ],
                ),
                MyContainer(icon: Icons.call, text: '121 Berlin Road'),
                SizedBox(height: 100.h),
                Container(
                  height: 39.h,
                  width: 144.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      color: Theme.of(context).primaryColor),
                  child: Center(
                    child: Text(
                      'Sauvegarder',
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w500,
                        fontSize: 15.sp,
                        color: Color(0xff51050F),
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
