import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
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


    Widget chatInput(){
      return Container(
        margin: EdgeInsets.all(20),
        child: Row(
          children: [
            Expanded(
              child: Container(
                height: 45,
                padding: EdgeInsets.symmetric(horizontal: 16,),
                decoration: BoxDecoration(
                  color: bgColor4,
                  borderRadius: BorderRadius.circular(12)
                ),
                child: Center(child: TextFormField(
                  decoration: InputDecoration.collapsed(
                    hintText: 'Type Message...',
                    hintStyle: subtitleTextStyle
                  ),
                ),),
              ),
            ),
            SizedBox(width: 20,),
            Image.asset('assets/button_send.png', width: 45,)
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: bgColor3,
      appBar:
          PreferredSize(preferredSize: Size.fromHeight(70), child: header()),
      bottomNavigationBar: chatInput(),
    );
  }
}
