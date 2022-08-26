import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ModifyPayment extends StatefulWidget {
  const ModifyPayment({Key? key}) : super(key: key);

  @override
  State<ModifyPayment> createState() => _ModifyPaymentState();
}

class _ModifyPaymentState extends State<ModifyPayment> {
  String dropDownVal = 'Choose*';
  var dropDownItems = [
    'Choose*',
    'A',
    'B',
    'C',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () {},
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Text(
          'Mode de paiement',
          style: GoogleFonts.roboto(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 21.sp),
        ),
        centerTitle: false,
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.only(
          left: 15,
          right: 15,
          bottom: 15,
        ),
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10.h,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'numéro de carte',
                    style: GoogleFonts.roboto(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 19.sp),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width / 1.12,
                      child: TextFormField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 6.0.h),
                          fillColor: Colors.grey.shade200,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Colors.grey.shade400,
                              )),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                ],
              ),
              SizedBox(
                height: 10.sp,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'CVV',
                        style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 19.sp),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * .4,
                          child: TextFormField(
                            decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: 6.0.h),
                              fillColor: Colors.grey.shade200,
                              filled: true,
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.grey.shade400,
                                  )),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Expiration',
                        style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 19.sp),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * .4,
                          child: TextFormField(
                            decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: 6.0.h),
                              fillColor: Colors.grey.shade200,
                              filled: true,
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.grey.shade400,
                                  )),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10.h,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: EdgeInsets.only(
                          top: 10, left: 15, right: 15, bottom: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff6DD3E1),
                      ),
                      child: Text(
                        'Mise à jour',
                        style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 17.sp),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
