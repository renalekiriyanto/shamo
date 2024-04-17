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

    return ListView(
      children: [header()],
    );
  }
}
