import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:shamo_mobile/theme.dart";

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});
  Widget header() {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Sign Up',
              style: primaryTextStyle.copyWith(fontSize: 24, fontWeight: bold)),
          SizedBox(height: 2),
          Text(
            'Register and Happy Shoping',
            style: subtitleTextStyle,
          )
        ],
      ),
    );
  }

  Widget fullNameInput() {
    return Container(
      margin: EdgeInsets.only(top: 86),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Full Name',
              style:
                  primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium)),
          SizedBox(
            height: 12,
          ),
          Container(
            height: 50,
            padding: EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
                color: bgColor2, borderRadius: BorderRadius.circular(12)),
            child: Center(
              child: Row(
                children: [
                  Image.asset(
                    'assets/icon_fullname.png',
                    width: 17,
                  ),
                  SizedBox(width: 16),
                  Expanded(
                      child: TextFormField(
                    style: primaryTextStyle,
                    decoration: InputDecoration.collapsed(
                      hintText: 'Your Full Name',
                      hintStyle: subtitleTextStyle,
                    ),
                  ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget usernameInput() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Username',
              style:
                  primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium)),
          SizedBox(
            height: 12,
          ),
          Container(
            height: 50,
            padding: EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
                color: bgColor2, borderRadius: BorderRadius.circular(12)),
            child: Center(
              child: Row(
                children: [
                  Image.asset(
                    'assets/icon_username.png',
                    width: 17,
                  ),
                  SizedBox(width: 16),
                  Expanded(
                      child: TextFormField(
                    style: primaryTextStyle,
                    decoration: InputDecoration.collapsed(
                      hintText: 'Your Username',
                      hintStyle: subtitleTextStyle,
                    ),
                  ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget emailInput() {
    return Container(
      margin: EdgeInsets.only(top: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Email Address',
              style:
                  primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium)),
          SizedBox(
            height: 12,
          ),
          Container(
            height: 50,
            padding: EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
                color: bgColor2, borderRadius: BorderRadius.circular(12)),
            child: Center(
              child: Row(
                children: [
                  Image.asset(
                    'assets/icon_email.png',
                    width: 17,
                  ),
                  SizedBox(width: 16),
                  Expanded(
                      child: TextFormField(
                    style: primaryTextStyle,
                    decoration: InputDecoration.collapsed(
                      hintText: 'Your Email Address',
                      hintStyle: subtitleTextStyle,
                    ),
                  ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget passwordInput() {
    return Container(
      margin: EdgeInsets.only(top: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Password',
              style:
                  primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium)),
          SizedBox(
            height: 12,
          ),
          Container(
            height: 50,
            padding: EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
                color: bgColor2, borderRadius: BorderRadius.circular(12)),
            child: Center(
              child: Row(
                children: [
                  Image.asset(
                    'assets/icon_password.png',
                    width: 17,
                  ),
                  SizedBox(width: 16),
                  Expanded(
                      child: TextFormField(
                    style: primaryTextStyle,
                    obscureText: true,
                    decoration: InputDecoration.collapsed(
                      hintText: 'Your Password',
                      hintStyle: subtitleTextStyle,
                    ),
                  ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget signUpButton() {
    return Container(
      height: 50,
      width: double.infinity,
      margin: EdgeInsets.only(top: 30),
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
            backgroundColor: primaryColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12))),
        child: Text(
          'Sign Up',
          style: primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
        ),
      ),
    );
  }

  Widget footer(context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Don't have an account ? ",
            style: subtitleTextStyle.copyWith(fontSize: 12),
          ),
          GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/login');
              },
              child: GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, '/login');
                },
                child: Text(
                  "Sign In",
                  style:
                      purpleTextStyle.copyWith(fontSize: 12, fontWeight: medium),
                ),
              ))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: bgColor1,
        resizeToAvoidBottomInset: false,
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header(),
              fullNameInput(),
              usernameInput(),
              emailInput(),
              passwordInput(),
              signUpButton(),
              Spacer(),
              footer(context)
            ],
          ),
        ),
      ),
    );
  }
}
