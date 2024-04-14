import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:shamo_mobile/pages/auth/login_page.dart";
import "package:shamo_mobile/pages/auth/signup_page.dart";
import "package:shamo_mobile/pages/home/main_home.dart";
import "package:shamo_mobile/pages/splash_page.dart";
import "theme.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/login': (context) => LoginPage(),
        '/sign-up': (context) => SignupPage(),
        '/home': (context) => HomePage()
      },
    );
  }
}