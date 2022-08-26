import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
            _settingModalBottomSheet(context);
          },
          child: Text('Cart'),
        ),
      ),
    );
  }

  void _settingModalBottomSheet(context) {
    showModalBottomSheet<dynamic>(
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      context: context,
      builder: (BuildContext bc) {
        return Container(
          height: MediaQuery.of(context).size.height / 1.5,
          decoration: BoxDecoration(
            color: Color(0xfff9f9f9),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(34.0),
              topRight: Radius.circular(34.0),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 16.h),
            child: Column(
              children: [
                SizedBox(height: 20.h),
                Text(
                  'Finaliser la commande',
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w500,
                    fontSize: 18.sp,
                    color: Color(0xff51050F),
                  ),
                ),
                SizedBox(height: 40.h),
                Padding(
                  padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 10.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Paiement',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                          color: Color(0xff222222),
                        ),
                      ),
                      Text(
                        'Modifier',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                          color: Color(0xff6DD3E1),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(
                          vertical: 20.h, horizontal: 30.w),
                      height: 38.h,
                      width: 64.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Image(
                        image: AssetImage('assets/images/Redgreen.jpg'),
                      ),
                    ),
                    SizedBox(width: 20.w),
                    Text(
                      '**** **** **** 3947',
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w400,
                        fontSize: 14.sp,
                        color: Color(0xff222222),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.h, horizontal: 30.w),
                  child: Row(
                    children: [
                      Icon(Icons.padding),
                      SizedBox(width: 10.w),
                      Text(
                        'Ajouter une carte de crédit',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp,
                          color: Color(0xff51050F),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 30.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sous-total:',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          fontSize: 15.sp,
                          color: Color(0xff9B9B9B),
                        ),
                      ),
                      Text(
                        '1,90€',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w600,
                          fontSize: 18.sp,
                          color: Color(0xff222222),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 15.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Frais de service (10%)',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          fontSize: 15.sp,
                          color: Color(0xff9B9B9B),
                        ),
                      ),
                      Text(
                        '10€',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w600,
                          fontSize: 18.sp,
                          color: Color(0xff222222),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 15.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total:',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          fontSize: 15.sp,
                          color: Color(0xff9B9B9B),
                        ),
                      ),
                      Text(
                        '1,90€',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w600,
                          fontSize: 18.sp,
                          color: Color(0xff222222),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 70.h),
                Container(
                  height: 56.h,
                  width: 327.w,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Text(
                      'Payer',
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w500,
                        fontSize: 14.sp,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
