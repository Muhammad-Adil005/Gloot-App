import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glootapp/Screen/EditProfile.dart';
import 'package:glootapp/Screen/FavouriteSeller.dart';
import 'package:glootapp/Screen/Notifications.dart';
import 'package:glootapp/Screen/modify_card.dart';
import 'package:glootapp/Screen/my_order.dart';
import 'package:google_fonts/google_fonts.dart';

import 'AddnewCreditCard.dart';
import 'StartScreen.dart';
import 'change_password.dart';

class CustomerProfilePage extends StatefulWidget {
  const CustomerProfilePage({Key? key}) : super(key: key);

  @override
  State<CustomerProfilePage> createState() => _CustomerProfilePageState();
}

class _CustomerProfilePageState extends State<CustomerProfilePage> {
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
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                  width: 375.w,
                  height: 200.h,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.w, right: 20.w),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 40.h, left: 5.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Mon profile',
                                style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 22.sp,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 40.h),
                              Row(
                                children: [
                                  Image(
                                    image: AssetImage('assets/images/men1.png'),
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(width: 10.w),
                                  Text(
                                    'Micheal Sam',
                                    style: GoogleFonts.outfit(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16.sp,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(width: 40.w),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                EditProfilePage()),
                                      );
                                    },
                                    child: Container(
                                      width: 128.w,
                                      height: 34.h,
                                      decoration: BoxDecoration(
                                        color: Colors.white.withOpacity(0.5),
                                        borderRadius: BorderRadius.circular(40),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Modifier profile',
                                          style: GoogleFonts.outfit(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14.sp,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20.w, top: 20.h),
                      width: 84.w,
                      height: 21.h,
                      child: Text(
                        'Paramètres',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w600,
                          fontSize: 16.sp,
                          color: Color(0xff51050F),
                        ),
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ChangePassword()),
                      );
                    },
                    child: MyContainer(
                        icon: Icons.lock, text: 'Modifier mot de passe ')),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AddCreditCard()));
                  },
                  child: MyContainer(
                      icon: Icons.monetization_on_rounded,
                      text: 'Mode de paiement'),
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NotificationsPage()),
                      );
                    },
                    child: MyContainer(
                        icon: Icons.notifications, text: 'Notifications')),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyOrders()),
                      );
                    },
                    child: MyContainer(
                        icon: Icons.wysiwyg_rounded, text: 'Mes commandes')),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FavouriteSellerPage()),
                      );
                    },
                    child:
                        MyContainer(icon: Icons.favorite, text: 'Mes favoris')),
                GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => StartPage()),
                      );
                    },
                    child:
                        MyContainer(icon: Icons.explore, text: 'Déconnexion')),
                GestureDetector(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return Dialog(
                            backgroundColor: Colors.transparent,
                            child: Container(
                              height: 280,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              padding: EdgeInsets.all(20),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.warning_amber,
                                        color: Colors.red.shade600,
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Text(
                                      'La suppression de votre compte est permanente',
                                      style: GoogleFonts.roboto(
                                        textStyle: TextStyle(
                                            color: Colors.red.shade600,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      )),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Text(
                                      'Votre compte et toutes les données associées seront effacées et irrécuperables Etes-vous sur de vouloir continuer ?',
                                      style: GoogleFonts.roboto(
                                        textStyle: TextStyle(
                                            color: Colors.grey, fontSize: 16),
                                      )),
                                  SizedBox(
                                    height: 30.h,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.red.shade600,
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        padding: EdgeInsets.all(10),
                                        child: Text(
                                          'SUPPRIMER LE COMPTE',
                                          style: GoogleFonts.roboto(
                                              color: Colors.white,
                                              fontSize: 12),
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.black),
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        padding: EdgeInsets.all(10),
                                        child: Text(
                                          'ANNULER',
                                          style: GoogleFonts.roboto(
                                              color: Colors.black,
                                              fontSize: 12),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          );
                        });
                  },
                  child: MyContainer(
                      icon: Icons.supervisor_account_sharp,
                      text: 'Supprimer mon compte'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
