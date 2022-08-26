import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glootapp/Screen/rating_and_reviews.dart';
import 'package:google_fonts/google_fonts.dart';

class ClientsReview2 extends StatefulWidget {
  const ClientsReview2({Key? key}) : super(key: key);

  @override
  State<ClientsReview2> createState() => _ClientsReview2State();
}

class _ClientsReview2State extends State<ClientsReview2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
            clientModalBottomSheet(context);
          },
          child: const Text('Clients Review Screen'),
        ),
      ),
    );
  }
}

void clientModalBottomSheet(context) {
  showModalBottomSheet<dynamic>(
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    context: context,
    builder: (BuildContext bc) {
      return Container(
        height: MediaQuery.of(context).size.height / 1.2,
        decoration: const BoxDecoration(
          color: Color(0xfff9f9f9),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(34.0),
            topRight: Radius.circular(34.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 6.h,
                width: 60.w,
                decoration: BoxDecoration(
                  color: const Color(0xff9b9b9b),
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              Text(
                'Quelle note attribuez-vous?',
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w100,
                  fontStyle: FontStyle.italic,
                  fontSize: 18.sp,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.star,
                    size: 40,
                    color: Color(0xffFFBA49),
                  ),
                  Icon(
                    Icons.star,
                    size: 40,
                    color: Color(0xffFFBA49),
                  ),
                  Icon(
                    Icons.star,
                    size: 40,
                    color: Color(0xffFFBA49),
                  ),
                  Icon(
                    Icons.star,
                    size: 40,
                    color: Color(0xffFFBA49),
                  ),
                  Icon(
                    Icons.star_border_rounded,
                    size: 40,
                    color: Color(0xff9b9b9b),
                  ),
                ],
              ),
              Text(
                'Partagez votre opinion sur ce chef Gloot',
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w100,
                  fontStyle: FontStyle.italic,
                  fontSize: 18.sp,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16),
                height: 150.h,
                width: 340.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 4,
                      blurRadius: 5,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Text(
                  'I’m super happy with these! I’ve never bought jeans online before and I didn’t think they’d even fit, but it turns out they fit pretty perfectly. I got a size 28- I’m 5’6” and weigh about 127 lbs. They are tight but not suffocating ...',
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp,
                      color: Color(0xff222222)),
                ),
              ),
              Row(
                children: [
                  Image.asset('assets/images/cake.png'),
                  Image.asset('assets/images/cake.png'),
                  Container(
                    height: 104.h,
                    width: 104.w,
                    color: const Color(0xffffffff).withOpacity(0.2),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CircleAvatar(
                          radius: 26.r,
                          backgroundColor: const Color(0xff6DD3E1),
                          child: const Icon(
                            Icons.camera_alt_rounded,
                            color: Colors.white,
                          ),
                        ),
                        const Text(
                          'Ajoutez vos photos',
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                ],
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                height: 48.h,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RatingAndReviewsPage(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.r),
                    ),
                    primary: const Color(0xff6DD3E1),
                  ),
                  child: const Text('Envoyer avis'),
                ),
              )
            ],
          ),
        ),
      );
    },
  );
}
