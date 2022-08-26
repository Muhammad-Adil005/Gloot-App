import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glootapp/Screen/upload_products.dart';
import 'package:google_fonts/google_fonts.dart';

import 'modify_card.dart';

class AddCreditCard extends StatefulWidget {
  const AddCreditCard({Key? key}) : super(key: key);

  @override
  State<AddCreditCard> createState() => _AddCreditCardState();
}

class _AddCreditCardState extends State<AddCreditCard> {
  Widget MyContainer({required IconData icon, required String text}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.h),
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
        padding: EdgeInsets.only(left: 10.w),
        child: Row(
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
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Mode de paiement'),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ModifyPayment()));
            },
            child: MyContainer(
                icon: Icons.credit_card, text: 'Ajouter une carte de crédit'),
          ),
        ),
      ),
    );
  }
}
