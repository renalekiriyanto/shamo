import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:shamo_mobile/theme.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(top: 30, left: 30, right: 30),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hello, Alex",
                    style: primaryTextStyle.copyWith(
                        fontSize: 25, fontWeight: semiBold),
                  ),
                  Text(
                    "@alexkeinn",
                    style: subtitleTextStyle.copyWith(fontSize: 16),
                  ),
                ],
              ),
            ),
            Container(
              width: 54,
              height: 54,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/image_profile.png'))),
            )
          ],
        ),
      );
    }

    Widget categories() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(
                width: 30,
              ),
              Container(
                margin: EdgeInsets.only(right: 16),
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12), color: primaryColor),
                child: Text(
                  'All Shoes',
                  style:
                      primaryTextStyle.copyWith(fontSize: 13, fontWeight: medium),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 16),
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: transparantColor,
                    border: Border.all(color: subtitleTextColor)),
                child: Text(
                  'Running',
                  style:
                      subtitleTextStyle.copyWith(fontSize: 13, fontWeight: medium),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 16),
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: transparantColor,
                    border: Border.all(color: subtitleTextColor)),
                child: Text(
                  'Training',
                  style:
                      subtitleTextStyle.copyWith(fontSize: 13, fontWeight: medium),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 16),
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: transparantColor,
                    border: Border.all(color: subtitleTextColor)),
                child: Text(
                  'Basketball',
                  style:
                      subtitleTextStyle.copyWith(fontSize: 13, fontWeight: medium),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 16),
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: transparantColor,
                    border: Border.all(color: subtitleTextColor)),
                child: Text(
                  'Hiking',
                  style:
                      subtitleTextStyle.copyWith(fontSize: 13, fontWeight: medium),
                ),
              ),
            ],
          ),
        ),
      );
    }

    return ListView(
      children: [header(), categories()],
    );
  }
}
