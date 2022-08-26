import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:glootapp/Screen/Allchats.dart';
import 'package:glootapp/Screen/Cart.dart';
import 'package:glootapp/Screen/CustomerProfile.dart';
import 'package:glootapp/Screen/HomeScreen.dart';
import 'package:glootapp/Screen/chat_screen.dart';
import 'package:glootapp/Screen/searchPage.dart';

import '../Screen/CartScreen.dart';
import '../Screen/SellerProfile.dart';
import '../Screen/SingleProduct.dart';
import '../Screen/SuccessScreen.dart';
import '../Screen/VendorProfile.dart';
import '../Screen/rating_and_review_with_photos.dart';
import '../Screen/rating_and_reviews.dart';
import '../Screen/upload_products.dart';

class bottomNavigationBar extends StatefulWidget {
  const bottomNavigationBar({Key? key}) : super(key: key);

  @override
  _bottomNavigationBarState createState() => _bottomNavigationBarState();
}

class _bottomNavigationBarState extends State<bottomNavigationBar> {
  @override
  void initState() {
    super.initState();
  }

  var smallHeading = 15.0;
  var largeHeading = 20.0;
  static var selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    SearchPage(),
    AllChatPage(),
    CartScreenPage(),
    CustomerProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        showSelectedLabels: true,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Color(0xff0B3B8F),
        onTap: _onTap,
        currentIndex: selectedIndex,
        // selectedLabelStyle: GoogleFonts.poppins(fontSize: 10),

        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.home_filled,
              size: 20,
              color: Colors.brown,
            ),
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search,              color: Colors.brown,
                  size: 20), label: ''),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              CupertinoIcons.chat_bubble,
              color: Colors.brown,
              size: 20,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              CupertinoIcons.cart,
              color: Colors.brown,
              size: 20,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              CupertinoIcons.person,
              color: Colors.brown,
              size: 20,
            ),
          ),
        ],
      ),
      body: _widgetOptions.elementAt(selectedIndex),
    );
  }

  void _onTap(int index) {
    selectedIndex = index;
    setState(() {});
  }
}
