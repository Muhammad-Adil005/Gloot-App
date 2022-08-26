import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    int currentIndex = 0;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: GestureDetector(
          onTap: (){Navigator.pop(context);},
          child: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Text(
          'Modifier mot de passe',
          style: GoogleFonts.roboto(
              fontWeight: FontWeight.w700,
              fontSize: 20.h,
              color: const Color(0xff51050F)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.topLeft,
              // padding: const EdgeInsets.only(left: 25, top: 41),
              child: Text(
                "Mot de passe actuel ",
                style: GoogleFonts.roboto(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w800,
                  color: const Color(0xff191D31),
                ),
              ),
            ),
            SizedBox(
                height: 52.h,
                width: MediaQuery.of(context).size.width,
                // padding: const EdgeInsets.only(left: 25, right: 23),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: const Color(0xffF3F3F3).withOpacity(0.1),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    prefixIcon:
                        const ImageIcon(AssetImage('assets/images/lock.png')),
                    suffixIcon: const Icon(Icons.remove_red_eye_outlined),
                    labelText: "",
                  ),
                )),
            SizedBox(
              height: 70.h,
              width: MediaQuery.of(context).size.width,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.topLeft,
              // padding: const EdgeInsets.only(left: 25, top: 41),
              child: const Text(
                "Nouveau mot de passe",
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                    color: Color(0xff191D31)),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            SizedBox(
              height: 52,
              width: MediaQuery.of(context).size.width,
              child: TextField(
                onTap: () {},
                obscureText: true,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: const ImageIcon(
                      AssetImage('assets/images/lock_transparent.png')),
                  hintText: "Entrer nouveau mot de passe",
                  hintStyle: GoogleFonts.roboto(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: const Color(0xffA7A987),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.topLeft,
              child: const Text(
                "Confirmer nouveau mot de passe",
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                    color: Color(0xff191D31)),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            SizedBox(
              height: 52.h,
              width: MediaQuery.of(context).size.width,
              // padding: const EdgeInsets.only(left: 25, right: 23),
              child: TextField(
                onTap: () {},
                obscureText: true,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: ImageIcon(
                      AssetImage('assets/images/lock_transparent.png')),
                  hintText: "Saisir à nouveau mot de passe",
                  hintStyle: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color(0xffA7A987),
                  ),
                ),
              ),
            ),
            const Spacer(),
            Container(
              height: 39,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.only(
                left: 100,
                right: 87,
              ),
              child: TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(11)),
                  )),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(const Color(0xff6DD3E1)),
                ),
                child: Text(
                  "Modifier mot de passe",
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: const Color(0xff51050F),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
          ],
        ),
      ),
    );
  }
}
