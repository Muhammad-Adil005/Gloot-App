import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glootapp/Screen/SplashScreen.dart';

import 'Screen/Cart.dart';
import 'Screen/CartScreen.dart';
import 'Screen/CustomerProfile.dart';
import 'Screen/EditProfile.dart';
import 'Screen/FavouriteSeller.dart';
import 'Screen/HomeScreen.dart';
import 'Screen/Notifications.dart';
import 'Screen/SellerProfile.dart';
import 'Screen/Sign_Up_Successful.dart';
import 'Screen/SignupScreen.dart';
import 'Screen/SingleProduct.dart';
import 'Screen/StartScreen.dart';
import 'Screen/SuccessScreen.dart';
import 'Screen/VendorProfile.dart';
import 'Screen/change_password.dart';
import 'Screen/clients_review.dart';
import 'Screen/clients_review2.dart';
import 'Screen/rating_and_review_with_photos.dart';
import 'Screen/rating_and_reviews.dart';
import 'Screen/upload_products.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primaryColor: Color(0xff6DD3E1),
          ),
          home: SplashPage(),
          //UploadProducts(),
          //UploadProducts(),
          //ChangePassword(),
          //Cart(),
          //SignupSuccessful(),
          //ClientsReview2(),
          //ClientsReview(),
          //EditProfilePage(),
          //VendorProfilePage(),
          //CustomerProfilePage(),
          //NotificationsPage(),
          //CartScreenPage(),
          //SuccessPage(),
          //SingleProductPage(),
          //SellerProfilePage(),
          //RatingAndReviewsPage(),
          //RatingAndReviewWithPhotosPage(),
          //HomePage(),
          //SignupPage(),
          //StartPage(),
          //SplashPage(),
        );
      },
    );
  }
}
