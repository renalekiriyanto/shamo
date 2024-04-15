import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shamo_mobile/pages/home/chat_page.dart';
import 'package:shamo_mobile/pages/home/home_page.dart';
import 'package:shamo_mobile/pages/home/profile_page.dart';
import 'package:shamo_mobile/pages/home/wishlist_page.dart';
import 'package:shamo_mobile/theme.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    Widget cartButton() {
      return FloatingActionButton(
        onPressed: () {},
        backgroundColor: secondaryColor,
        child: Image.asset(
          'assets/icon_cart.png',
          width: 20,
        ),
      );
    }

    Widget customBottomNav() {
      return ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 12,
          clipBehavior: Clip.antiAlias,
          padding: EdgeInsets.all(0),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: currentPage,
            onTap: (value) {
              setState(() {
                currentPage = value;
              });
            },
            backgroundColor: bgColor4,
            items: [
            BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(top: 20, bottom: 5),
                  child: Image.asset(
                    'assets/icon_home.png',
                    width: 21,
                    color: currentPage == 0 ? primaryColor : disactiveColor,
                  ),
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(top: 20, bottom: 5, right: 10),
                  child: Image.asset(
                    'assets/icon_chat.png',
                    width: 20,
                    color: currentPage == 1 ? primaryColor : disactiveColor,
                  ),
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(top: 20, bottom: 5, left: 10),
                  child: Image.asset(
                    'assets/icon_wishlist.png',
                    width: 20,
                    color: currentPage == 2 ? primaryColor : disactiveColor,
                  ),
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(top: 20, bottom: 5),
                  child: Image.asset(
                    'assets/icon_profile.png',
                    width: 18,
                    color: currentPage == 3 ? primaryColor : disactiveColor,
                  ),
                ),
                label: '')
          ]),
        ),
      );
    }

    Widget body(){
      switch (currentPage) {
        case 0:
          return HomePage();
          break;
        case 1:
          return ChatPage();
          break;
        case 2:
          return WishlistPage();
          break;
        case 3:
          return ProfilePage();
          break;
        default:
          return HomePage();
          break;
      }
    }

    return Scaffold(
      backgroundColor: bgColor1,
      floatingActionButton: cartButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: customBottomNav(),
      body: body(),
    );
  }
}
