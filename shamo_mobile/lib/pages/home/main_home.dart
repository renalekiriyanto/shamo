import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shamo_mobile/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
          notchMargin: 10,
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: bgColor4,
            items: [
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icon_home.png',
                  width: 21,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icon_chat.png',
                  width: 20,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icon_wishlist.png',
                  width: 20,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icon_profile.png',
                  width: 18,
                ),
                label: '')
          ]),
        ),
      );
    }

    return Scaffold(
      backgroundColor: bgColor1,
      floatingActionButton: cartButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: customBottomNav(),
      body: Center(
        child: Text('halaman home'),
      ),
    );
  }
}
