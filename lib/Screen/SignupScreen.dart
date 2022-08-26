import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glootapp/bottomNavigationBar/BottomNavigationAdmin.dart';
import 'package:glootapp/bottomNavigationBar/BottomNavigationSeller.dart';
import 'package:google_fonts/google_fonts.dart';

import '../bottomNavigationBar/BottomNavigation.dart';
import 'HomeScreen.dart';
import 'Sign_Up_Successful.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  int index = 1;
 var  _category='Sélectionner un rôle';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(height: 30.h),
                Container(
                  alignment: Alignment.center,
                  height: 31.h,
                  child: Center(
                    child: Text(
                      index==0?'S’inscrire':'Se connecter',
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w800,
                        fontSize: 24.sp,
                        color: Color(0xff51050F),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30.h),
                Padding(
                  padding: EdgeInsets.only(left: 20.w, right: 20.w),
                  child: Container(
                    height: 50.h,
                    width: 327.w,
                    decoration: BoxDecoration(
                      color: Color(0xffF8F9FB),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 5.w, right: 5.w),
                      child: Row(
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  index = 0;
                                });
                              },
                              child: Container(
                                width: 160.w,
                                height: 42.h,
                                decoration: BoxDecoration(
                                  color: index == 0
                                      ? Colors.white
                                      : Color(0xffF8F9FB),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Center(
                                  child: Text(
                                    'S’inscrire',
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14.sp,
                                      color: Color(0xff191D31),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  index = 1;
                                });
                              },
                              child: Container(
                                height: 42.h,
                                width: 160.w,
                                decoration: BoxDecoration(
                                  color: index == 1
                                      ? Colors.white
                                      : Color(0xffF8F9FB),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Center(
                                  child: Text(
                                    'Se connecter',
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14.sp,
                                      color: Color(0xffA7A9B7),
                                    ),
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
                Visibility(
                  visible: index == 0,
                  child: Column(
                    children: [
                      SizedBox(height: 30.h),
                      Container(
                        margin: EdgeInsets.only(left: 20.w, right: 20.w),
                        child: Row(
                          children: [
                            Text(
                              'Nom Prénom',
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w800,
                                fontSize: 16.sp,
                                color: Color(0xff51050F),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: 20.w, right: 20.w, top: 10.h),
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(12),
                            prefixIcon: Icon(Icons.person_outline),
                            hintStyle: GoogleFonts.roboto(
                              fontWeight: FontWeight.w400,
                              fontSize: 14.sp,
                              color: Color(0xffA7A9B7),
                            ),
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xffF3F3F3), width: 1),
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xffF3F3F3), width: 1),
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xffF3F3F3), width: 1),
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                            hintText: 'Saisissez votre nom',
                          ),
                        ),
                      ),
                      Container(
                        margin:
                            EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h),
                        child: Row(
                          children: [
                            Text(
                              'Adresse email',
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w800,
                                fontSize: 16.sp,
                                color: Color(0xff51050F),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: 20.w, right: 20.w, top: 10.h),
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(12),
                            prefixIcon: Icon(Icons.call),
                            hintStyle: GoogleFonts.roboto(
                              fontWeight: FontWeight.w400,
                              fontSize: 14.sp,
                              color: Color(0xffA7A9B7),
                            ),
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xffF3F3F3), width: 1),
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xffF3F3F3), width: 1),
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xffF3F3F3), width: 1),
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                            hintText: 'Saisissez votre email',
                          ),
                        ),
                      ),
                      Container(
                        margin:
                            EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h),
                        child: Row(
                          children: [
                            Text(
                              'Mot de passe',
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w800,
                                fontSize: 16.sp,
                                color: Color(0xff51050F),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: 20.w, right: 20.w, top: 10.h),
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(12),
                            prefixIcon: Icon(Icons.lock),
                            hintStyle: GoogleFonts.roboto(
                              fontWeight: FontWeight.w400,
                              fontSize: 14.sp,
                              color: Color(0xffA7A9B7),
                            ),
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xffF3F3F3), width: 1),
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xffF3F3F3), width: 1),
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xffF3F3F3), width: 1),
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                            hintText: 'Saisissez votre mot de passe',
                          ),
                        ),
                      ),
                      Container(
                        margin:
                        EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h),
                        child: Row(
                          children: [
                            Text(
                              'Sélectionner un rôle',
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w800,
                                fontSize: 16.sp,
                                color: Color(0xff51050F),
                              ),
                            ),
                          ],
                        ),
                      ),
                    Padding(
                      padding:
                      EdgeInsets.only(left: 20.w, right: 20.w, top: 10.h),
                      child: Container(
                        height: 50,
                        child: DropdownButtonFormField<String>(
                          items: ['Sélectionner un rôle','Chef','Client','Admin'].map((String category) {
                            return new DropdownMenuItem(
                                value: category,
                                child: Row(
                                  children: <Widget>[
                                    Text(category,style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14.sp,
                                      color: Color(0xffA7A9B7),
                                    ),),
                                  ],
                                )
                            );
                          }).toList(),
                          onChanged: (String ?newValue) {
                            // do other stuff with _category
                            setState(() => _category = newValue!);
                          },
                          value: _category,
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xffF3F3F3), width: 1),
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xffF3F3F3), width: 1),
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xffF3F3F3), width: 1),
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                          )
                        ),
                      ),
                    ),
                SizedBox(height: 20.h),
                      GestureDetector(
                        onTap: () {
                          settingModalBottomSheet(context);
                        },
                        child: Container(
                          height: 56.h,
                          width: 327.w,
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Center(
                            child: Text(
                              'Créez votre compte',
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w700,
                                fontSize: 20.sp,
                                color: Color(0xff51050F),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30.h),
                      Text(
                        'Ou connectez vous avec',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          fontSize: 14.sp,
                          color: Color(0xffA7A9B7),
                        ),
                      ),
                      SizedBox(height: 30.h),
                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 0, horizontal: 40.w),
                            height: 56.h,
                            width: 327.w,
                            decoration: BoxDecoration(
                              //color: Colors.white,
                              color: Colors.grey.shade50,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Row(
                              children: [
                                Image(
                                  image: AssetImage('assets/images/Google.png'),
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(width: 12.w),
                                Text(
                                  'Se connecter avec Google',
                                  style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 16.sp,
                                    color: Color(0xff191D31),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 0, horizontal: 40.w),
                            height: 56.h,
                            width: 327.w,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              //color: Colors.grey.shade50,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Row(
                              children: [
                                Image(
                                  image:
                                      AssetImage('assets/images/facebook.png'),
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(width: 12.w),
                                Text(
                                  'Se connecter avec Facebook',
                                  style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 16.sp,
                                    color: Color(0xff191D31),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.h),
                    ],
                  ),
                ),
                Visibility(
                  visible: index == 1,
                  child: Column(
                    children: [
                      SizedBox(height: 30.h),
                      Container(
                        margin:
                            EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h),
                        child: Row(
                          children: [
                            Text(
                              'Adresse email',
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w800,
                                fontSize: 16.sp,
                                color: Color(0xff51050F),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: 20.w, right: 20.w, top: 10.h),
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(12),
                            prefixIcon: Icon(Icons.call),
                            hintStyle: GoogleFonts.roboto(
                              fontWeight: FontWeight.w400,
                              fontSize: 14.sp,
                              color: Color(0xffA7A9B7),
                            ),
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xffF3F3F3), width: 1),
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xffF3F3F3), width: 1),
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xffF3F3F3), width: 1),
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                            hintText: 'Entrez votre email ',
                          ),
                        ),
                      ),
                      Container(
                        margin:
                            EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h),
                        child: Row(
                          children: [
                            Text(
                              'Mot de passe',
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w800,
                                fontSize: 16.sp,
                                color: Color(0xff51050F),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: 20.w, right: 20.w, top: 10.h),
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(12),
                            prefixIcon: Icon(Icons.lock),
                            hintStyle: GoogleFonts.roboto(
                              fontWeight: FontWeight.w400,
                              fontSize: 14.sp,
                              color: Color(0xffA7A9B7),
                            ),
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xffF3F3F3), width: 1),
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xffF3F3F3), width: 1),
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xffF3F3F3), width: 1),
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                            hintText: 'Entrez votre mot de passe',
                          ),
                        ),
                      ),
                      SizedBox(height: 40.h),
                      GestureDetector(
                        onTap: () {
                          _category=='Chef'?
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => bottomNavigationBarSeller()),
                          ):_category=='Admin'?Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => bottomNavigationBarAdmin())):Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => bottomNavigationBar()),
                          );
                        },
                        child: Container(
                          height: 56.h,
                          width: 327.w,
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Center(
                            child: Text(
                              'Se connecter',
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w700,
                                fontSize: 20.sp,
                                color: Color(0xff51050F),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30.h),
                      Text(
                        'Ou connectez vous avec',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          fontSize: 14.sp,
                          color: Color(0xffA7A9B7),
                        ),
                      ),
                      SizedBox(height: 30.h),
                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 0, horizontal: 40.w),
                            height: 56.h,
                            width: 327.w,
                            decoration: BoxDecoration(
                              //color: Colors.white,
                              color: Colors.grey.shade50,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Row(
                              children: [
                                Image(
                                  image: AssetImage('assets/images/Google.png'),
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(width: 12.w),
                                Text(
                                  'Se connecter avec Google',
                                  style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 16.sp,
                                    color: Color(0xff191D31),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 0, horizontal: 40.w),
                            height: 56.h,
                            width: 327.w,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              //color: Colors.grey.shade50,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Row(
                              children: [
                                Image(
                                  image:
                                      AssetImage('assets/images/facebook.png'),
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(width: 12.w),
                                Text(
                                  'Se connecter avec Facebook',
                                  style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 16.sp,
                                    color: Color(0xff191D31),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.h),
                    ],
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
