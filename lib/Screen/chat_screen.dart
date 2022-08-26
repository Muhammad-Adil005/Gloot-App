import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
          onTap:(){
            Navigator.of(context).pop();
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                height: 10.h,
                width: 10.w,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
            ),
            SizedBox(
              width: 8.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Maddy Lin',
                  style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'En ligne',
                  style: GoogleFonts.roboto(
                    color: const Color(0xffA7AEC1),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ],
        ),
        actions: [
          const Icon(
            Icons.more_vert,
            color: Colors.black,
          ),
          SizedBox(
            width: 10.w,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Spacer(),
                Container(
                  height: 30.h,
                  width: 55.w,
                  decoration: BoxDecoration(
                    color: const Color(0xff51050F),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Text(
                      'Hier',
                      style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                
                const Spacer(),
              ],
            ),
            SizedBox(
                  height: 10..h,
                ),
            Container(
              height: 70.h,
              width: 329.w,
              decoration: BoxDecoration(
                color: const Color(0xfff9f9f9),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12.r),
                  topRight: Radius.circular(12.r),
                  bottomRight: Radius.circular(12.r),
                ),
              ),
              child: Center(
                child: Text(
                  'Bonjour Sarah je suis en chemin pour venir chez vous.',
                  style: GoogleFonts.roboto(
                    color: const Color(0xffA7A9B7),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10..h,
            ),
            Text(
              '4:26 ',
              style: GoogleFonts.roboto(
                color: const Color(0xffA7A9B7),
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            Row(
              children: [
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      height: 45.h,
                      width: 228.w,
                      decoration: BoxDecoration(
                        color: const Color(0xff51050F),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12.r),
                          topRight: Radius.circular(12.r),
                          bottomLeft: Radius.circular(12.r),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Bonjour Maddy, je vous attends!',
                          style: GoogleFonts.roboto(color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10..h,
                    ),
                    Text(
                      '5:22 ',
                      style: GoogleFonts.roboto(
                        color: const Color(0xffA7A9B7),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 45.h,
                      // width: 329.w,
                      decoration: BoxDecoration(
                        color: const Color(0xfff9f9f9),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12.r),
                          topRight: Radius.circular(12.r),
                          bottomRight: Radius.circular(12.r),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Merci hâte de voir mon joli gâteau.',
                          style: GoogleFonts.roboto(
                              color: const Color(0xffA7A9B7)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10..h,
                    ),
                    Text(
                      '16:28 ',
                      style: GoogleFonts.roboto(
                        color: const Color(0xffA7A9B7),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                const Spacer(),
              ],
            ),
            const Spacer(),
            const Divider(
              thickness: 2,
            ),
            Row(
              children: [
                Expanded(
                  flex: 20,
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        CupertinoIcons.paperclip
                      ),
                      suffixIcon:
                        Icon(CupertinoIcons.smiley_fill),

                      label: const Text('Tapez votre message'),
                      fillColor: const Color(0xfff9f9f9),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                        borderSide: const BorderSide(color: Color(0xffF9F9F9)),
                      ),
                    ),
                  ),
                ),
                const Expanded(
                    flex: 2,
                    child: Icon(
                      Icons.send,
                      color: Color(0xff51050F),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
