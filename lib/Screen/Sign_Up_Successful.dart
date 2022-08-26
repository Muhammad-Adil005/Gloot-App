import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupSuccessful extends StatefulWidget {
  const SignupSuccessful({Key? key}) : super(key: key);

  @override
  State<SignupSuccessful> createState() => _SignupSuccessfulState();
}

class _SignupSuccessfulState extends State<SignupSuccessful> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
            settingModalBottomSheet(context);
          },
          child: Text('Sign Up Successfully'),
        ),
      ),
    );
  }
}

void settingModalBottomSheet(context) {
  showModalBottomSheet<dynamic>(
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    context: context,
    builder: (BuildContext bc) {
      return Container(
        height: MediaQuery.of(context).size.height / 1.5,
        decoration: BoxDecoration(
          color: Color(0xfff9f9f9),
          // borderRadius: BorderRadius.only(
          //   topLeft: Radius.circular(34.0),
          //   topRight: Radius.circular(34.0),
          // ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 16.h),
          child: Column(
            children: [
              Image(
                image: AssetImage('assets/images/Frame.png'),
              ),
              SizedBox(height: 20.h),
              Text(
                'Inscription réussie!',
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w600,
                  fontSize: 22.sp,
                  color: Color(0xff191D31),
                ),
              ),
              SizedBox(height: 10.h),
              Text(
                'Félicitations! Votre compte a bien été crée.',
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w400,
                  fontSize: 14.sp,
                  color: Color(0xffA7A9B7),
                ),
              ),
              Text(
                'Connectez vous afin de démarrer l’expérience',
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w400,
                  fontSize: 14.sp,
                  color: Color(0xffA7A9B7),
                ),
              ),
              Text(
                'Gloot',
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w400,
                  fontSize: 14.sp,
                  color: Color(0xffA7A9B7),
                ),
              ),
              SizedBox(height: 20.h),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context),
                    ),
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
            ],
          ),
        ),
      );
    },
  );
}
