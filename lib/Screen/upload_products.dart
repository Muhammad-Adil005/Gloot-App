import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class UploadProducts extends StatefulWidget {
  const UploadProducts({Key? key}) : super(key: key);

  @override
  State<UploadProducts> createState() => _UploadProductsState();
}

class _UploadProductsState extends State<UploadProducts> {
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
          'Ajouter votre création',
          style: GoogleFonts.roboto(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 18.sp),
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
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 180.h,
                    decoration: BoxDecoration(
                      // color: Colors.grey,
                      image: DecorationImage(
                        image: AssetImage('assets/images/cake.png'),
                        // image: AssetImage('assets/images/titleImage.png'),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 30.h,
                    right: MediaQuery.of(context).size.width * .34,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(width: 2, color: Colors.white)),
                      child: Icon(
                        Icons.camera_alt_outlined,
                        color: Colors.white,
                        size: 20.sp,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Titre',
                    style: GoogleFonts.roboto(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 17.sp),
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
                          contentPadding: EdgeInsets.all(8),
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
                        'Prix',
                        style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 17.sp),
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
                              contentPadding: EdgeInsets.all(10),
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
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Prix à la',
                        style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 17.sp),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15, right: 10),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: TextFormField(
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(8),
                              suffixIcon: Icon(
                                Icons.keyboard_arrow_down_sharp,
                                color: Colors.black,
                              ),
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
                      Padding(
                        padding: EdgeInsets.only(left: 15, right: 10),
                        child: Container(
                          padding: EdgeInsets.all(10),
                          width: MediaQuery.of(context).size.width * 0.4,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.grey.shade400)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              InkWell(
                                child: Text(
                                  'Part',
                                  style: GoogleFonts.roboto(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17.sp),
                                ),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              InkWell(
                                child: Text(
                                  'pièce',
                                  style: GoogleFonts.roboto(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17.sp),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Discription',
                    style: GoogleFonts.roboto(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 17.sp),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width / 1.12,
                      child: TextFormField(
                        keyboardType: TextInputType.multiline,
                        minLines: 1, //Normal textInputField will be displayed
                        maxLines: 5,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(10),
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
                height: 10.h,
              ),
              Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Catégorie',
                    style: GoogleFonts.roboto(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 17.sp),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15, right: 15, bottom: 15),
                    child: DropdownButtonFormField(
                      icon: Icon(Icons.keyboard_arrow_down),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(10),
                        fillColor: Colors.grey.shade200,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.grey.shade400,
                            )),
                      ),
                      value: dropDownVal,
                      onChanged: (Value) {
                        setState(() {
                          dropDownVal = Value.toString();
                        });
                      },
                      items: dropDownItems
                          .map((v) => DropdownMenuItem(
                              value: v, child: Text(v.toString())))
                          .toList(),
                    ),
                  ),
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
                        'Ajouter votre création',
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
