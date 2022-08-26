import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'all_users.dart';

class MyWallet extends StatefulWidget {
  const MyWallet({Key? key}) : super(key: key);

  @override
  State<MyWallet> createState() => _MyWalletState();
}

class _MyWalletState extends State<MyWallet> {
  int currentIndex = 0;
  List tilte = [
    'RECHARGE',
    'ONLINE SHOP',
    'RECHARGE',
    'RECHARGE',
    'KFC',
  ];
  List<String> dollars = [
    '+ \$50',
    '- \$100',
    '+ \$100',
    '+ \$80',
    '- \$10',
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: const Color(0xff363D4E),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 30.r,
                          backgroundImage:
                              AssetImage('assets/images/person.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            'Micheal Sam',
                            style: GoogleFonts.outfit(
                              fontWeight: FontWeight.w600,
                              fontSize: 18.sp,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                        Spacer(),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AllUsers()),
                            );
                          },
                          child: Icon(
                            Icons.wallet,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16.0, bottom: 8),
                      child: Text(
                        'Balance',
                        style: GoogleFonts.roboto(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w100,
                          fontSize: 18.sp,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                    const Divider(
                      thickness: 1,
                      color: Colors.white,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Text(
                        '\$519,00',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w700,
                          fontSize: 50.sp,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.only(left: 20, right: 20, top: 15),
                alignment: Alignment.centerLeft,
                height: MediaQuery.of(context).size.height * 0.6,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: 15, right: 15, top: 15, bottom: 10),
                      child: Text(
                        'Dernières transactions',
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.bold, fontSize: 18.sp),
                      ),
                    ),
                    Divider(
                      color: Colors.black,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Expanded(
                      child: ListView.builder(
                          itemCount: tilte.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.all(10),
                              child: ListTile(
                                title: Text(
                                  tilte[index],
                                  style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.sp,
                                  ),
                                ),
                                subtitle: Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Text(
                                    '012978xxxxxxx',
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 13.sp,
                                    ),
                                  ),
                                ),
                                trailing: Text(
                                  dollars[index],
                                  style: GoogleFonts.roboto(
                                      fontSize: 16.sp,
                                      color: dollars[index].startsWith('+')
                                          ? Colors.green
                                          : Colors.red),
                                ),
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//Container(
//                 padding: EdgeInsets.only(left: 20, right: 20, top: 15),
//                 alignment: Alignment.centerLeft,
//                 height: MediaQuery.of(context).size.height / 1.4,
//                 width: MediaQuery.of(context).size.width,
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(40),
//                     topRight: Radius.circular(40),
//                   ),
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Padding(
//                       padding: EdgeInsets.only(
//                           left: 15, right: 15, top: 15, bottom: 10),
//                       child: Text(
//                         'Dernières transactions',
//                         style: GoogleFonts.roboto(
//                             fontWeight: FontWeight.bold, fontSize: 18.sp),
//                       ),
//                     ),
//                     Divider(
//                       color: Colors.black,
//                     ),
//                     SizedBox(
//                       height: 10.h,
//                     ),
//                     Expanded(
//                       child: ListView.builder(
//                           itemCount: tilte.length,
//                           itemBuilder: (context, index) {
//                             return Padding(
//                               padding: EdgeInsets.all(10),
//                               child: ListTile(
//                                 title: Text(
//                                   tilte[index],
//                                   style: GoogleFonts.roboto(
//                                     fontWeight: FontWeight.bold,
//                                     fontSize: 15.sp,
//                                   ),
//                                 ),
//                                 subtitle: Padding(
//                                   padding: EdgeInsets.only(top: 10),
//                                   child: Text(
//                                     '012978xxxxxxx',
//                                     style: GoogleFonts.roboto(
//                                       fontWeight: FontWeight.normal,
//                                       fontSize: 13.sp,
//                                     ),
//                                   ),
//                                 ),
//                                 trailing: Text(
//                                   dollars[index],
//                                   style: GoogleFonts.roboto(
//                                       fontSize: 16.sp,
//                                       color: dollars[index].startsWith('+')
//                                           ? Colors.green
//                                           : Colors.red),
//                                 ),
//                               ),
//                             );
//                           }),
//                     ),
//                   ],
//                 ),
//               ),
