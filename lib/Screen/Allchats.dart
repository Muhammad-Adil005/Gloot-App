import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glootapp/Screen/chat_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class AllChatPage extends StatefulWidget {
  const AllChatPage({Key? key}) : super(key: key);

  @override
  State<AllChatPage> createState() => _AllChatPageState();
}

class _AllChatPageState extends State<AllChatPage> {
  Widget MyContainer(
      {required String text1,
      required String text2,
      required String text3,
      required String text4}) {
    return Container(
      padding: EdgeInsets.only(left: 20.w, right: 20.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 44.h,
            width: 44.w,
            decoration: BoxDecoration(
              image: DecorationImage(
                // fit: BoxFit.cover,
                image: AssetImage('assets/images/message.png'),
              ),
              shape: BoxShape.circle,
              color: Color(0xff1D272F),
            ),
          ),
          SizedBox(width: 10.w),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text1,
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w500,
                  fontSize: 14.sp,
                  color: Color(0xff191D31),
                ),
              ),
              Text(
                text2,
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w500,
                  fontSize: 14.sp,
                  color: Color(0xffA7A9B7),
                ),
              ),
              Text(
                text3,
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w400,
                  fontSize: 14.sp,
                  color: Color(0xffA7A9B7),
                ),
              ),
            ],
          ),
          SizedBox(width: 30.w),
          Text(
            text4,
            style: GoogleFonts.roboto(
              fontWeight: FontWeight.w500,
              fontSize: 12.sp,
              color: Color(0xffA7A9B7),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: 812.h,
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(height: 10.h),
                Column(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.only(left: 20.w, right: 20.w, top: 10.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image(
                            image: AssetImage('assets/images/Rectangle.png'),
                          ),
                          Text(
                            'Messages',
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w700,
                              fontSize: 20.sp,
                              color: Color(0xff51050F),
                            ),
                          ),
                          SizedBox(width: 20.w),
                          Row(
                            children: [
                              Icon(
                                Icons.notifications_active,
                                size: 40.sp,
                                color: Colors.yellow,
                              ),
                              SizedBox(width: 12.w),
                              Image(
                                image: AssetImage('assets/images/person.png'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30.h),
                    Padding(
                      padding:
                          EdgeInsets.only(left: 20.w, right: 20.w, top: 10.h),
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(12),
                          prefixIcon: Icon(Icons.search),
                          hintStyle: GoogleFonts.roboto(
                            fontWeight: FontWeight.w400,
                            fontSize: 14.sp,
                            color: Color(0xffA7A9B7),
                          ),
                          fillColor: Color(0xffF2F2F2),
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Color(0xffF3F3F3), width: 1),
                            borderRadius: BorderRadius.all(
                              Radius.circular(12),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Color(0xffF3F3F3), width: 1),
                            borderRadius: BorderRadius.all(
                              Radius.circular(12),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Color(0xffF3F3F3), width: 1),
                            borderRadius: BorderRadius.all(
                              Radius.circular(12),
                            ),
                          ),
                          hintText: 'Rechercher messages',
                        ),
                      ),
                    ),
                    SizedBox(height: 40.h),
                    GestureDetector(
                      onTap:(){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ChatScreen()));
                      },child: MyContainer(
                          text1: 'Maddy Lin',
                          text2: 'Hello Sarah je suis en route',
                          text3: 'message',
                          text4: ' 15:74 '),
                    ),
                    Container(
                      padding:
                          EdgeInsets.only(top: 20.h, left: 20.w, right: 20.w),
                      child: Divider(
                        thickness: 1,
                        color: Colors.grey.shade200,
                      ),
                    ),
                    SizedBox(height: 20.h),
                    GestureDetector(
                      onTap:(){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ChatScreen()));
                      },                      child: MyContainer(
                          text1: 'Kathryn vous a envoyé un',
                          text2: 'message',
                          text3: 'Cliquer pour voir le message',
                          text4: ' 18:32 '),
                    ),
                    Container(
                      padding:
                          EdgeInsets.only(top: 20.h, left: 20.w, right: 20.w),
                      child: Divider(
                        thickness: 1,
                        color: Colors.grey.shade200,
                      ),
                    ),
                    SizedBox(height: 20.h),
                    GestureDetector(
                      onTap:(){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ChatScreen()));
                      },                      child: MyContainer(
                          text1: 'Kathryn vous a envoyé un',
                          text2: 'message',
                          text3: 'Cliquer pour voir le message',
                          text4: '19:22 '),
                    ),
                    Container(
                      padding:
                          EdgeInsets.only(top: 20.h, left: 20.w, right: 20.w),
                      child: Divider(
                        thickness: 1,
                        color: Colors.grey.shade200,
                      ),
                    ),
                    SizedBox(height: 30.h),
                    MyContainer(
                        text1: 'Kathryn vous a envoyé un',
                        text2: 'message',
                        text3: 'Cliquer pour voir le message',
                        text4: 'Hier'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
