import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'my_order.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  bool checked1 = true;
  bool checked2 = true;
  bool checked3 = true;

  void getCheckBoxValue1(bool value) {
    if (checked1 == false) {
      setState(() {
        checked1 = true;
      });
    } else {
      setState(() {
        checked1 = false;
      });
    }
  }

  void getCheckBoxValue2(bool value) {
    if (checked2 == false) {
      setState(() {
        checked2 = true;
      });
    } else {
      setState(() {
        checked2 = false;
      });
    }
  }

  void getCheckBoxValue3(bool value) {
    if (checked3 == false) {
      setState(() {
        checked3 = true;
      });
    } else {
      setState(() {
        checked3 = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    int currentIndex = 0;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 35, top: 49),
                alignment: Alignment.topLeft,
                child: const Text(
                  "Trier",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff1D272F)),
                ),
              ),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 35, top: 30),
                    child: const Text(
                      "Les Plus proches",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff1D272F)),
                    ),
                  ),
                  const Spacer(),
                  Checkbox(
                    value: checked1,
                    onChanged: (value) {
                      getCheckBoxValue1(value!);
                    },
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 35, top: 30),
                    child: const Text(
                      "Les plus commandés",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff1D272F)),
                    ),
                  ),
                  const Spacer(),
                  Checkbox(
                    value: checked2,
                    onChanged: (value) {
                      getCheckBoxValue2(value!);
                    },
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 35, top: 30),
                    child: const Text(
                      "Les mieux notes",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff1D272F)),
                    ),
                  ),
                  const Spacer(),
                  Checkbox(
                    value: checked3,
                    onChanged: (value) {
                      getCheckBoxValue3(value!);
                    },
                  )
                ],
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 30.h),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyOrders()),
                );
              },
              child: Container(
                height: 46.h,
                width: 157.w,
                decoration: BoxDecoration(
                  color: Color(0xff6DD3E1),
                  borderRadius: BorderRadius.circular(34),
                ),
                child: Center(
                  child: Text(
                    'Appliquer',
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w700,
                      fontSize: 20.sp,
                      color: Color(0xff51050F),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
