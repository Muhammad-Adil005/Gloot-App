import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class FavouriteSellerPage extends StatefulWidget {
  const FavouriteSellerPage({Key? key}) : super(key: key);

  @override
  State<FavouriteSellerPage> createState() => _FavouriteSellerPageState();
}

class _FavouriteSellerPageState extends State<FavouriteSellerPage> {
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
                Container(
                  margin: EdgeInsets.only(left: 20.w, top: 30.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap:(){Navigator.pop(context);},child: Icon(
                          Icons.arrow_back_ios_outlined,
                          size: 15.sp,
                        ),
                      ),
                      Text(
                        'Mes favoris',
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w700,
                          fontSize: 20.sp,
                          color: Color(0xff06161C),
                        ),
                      ),
                      SizedBox(width: 20.w),
                    ],
                  ),
                ),
                SizedBox(height: 30.h),
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
                          6,
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
                                    child: Image(
                                      image: AssetImage(
                                          'assets/images/andrewpic.png'),
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
                                    '1566 Johnny Lane',
                                    style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 11.sp,
                                      color: Color(0xff1B1C1E),
                                    ),
                                  ),
                                  SizedBox(height: 10.h),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.favorite,
                                        color: Colors.red,
                                      ),
                                      SizedBox(width: 5.w),
                                      Container(
                                        height: 20.h,
                                        width: 20.w,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0xff23AA49),
                                        ),
                                        child: Icon(
                                          Icons.remove_red_eye_outlined,
                                          size: 18.sp,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
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
