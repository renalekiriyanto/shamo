import "package:flutter/material.dart";
import "package:shamo_mobile/theme.dart";

class DetailChat extends StatelessWidget {
  const DetailChat({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: bgColor1,
        centerTitle: false,
        leading: BackButton(
          color: primaryTextColor,
        ),
        title: Row(
          children: [
            Image.asset(
              'assets/image_shop_logo_online.png',
              width: 50,
            ),
            SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Shoe Store',
                  style: primaryTextStyle.copyWith(
                      fontWeight: medium, fontSize: 14),
                ),
                Text(
                  'Online',
                  style: secondaryTextStyle.copyWith(
                      fontWeight: light, fontSize: 14),
                )
              ],
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: bgColor3,
      appBar:
          PreferredSize(preferredSize: Size.fromHeight(70), child: header()),
    );
  }
}
