import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shamo_mobile/theme.dart';

class ProductTile extends StatelessWidget {
  const ProductTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 30, left: 30, bottom: 30),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              'assets/image_shoes_running.png',
              width: 120,
              height: 120,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Football',
                style: subtitleTextStyle.copyWith(fontSize: 12),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                'Predator 20.3 Firm Ground',
                style: primaryTextStyle.copyWith(
                    fontSize: 16, fontWeight: semiBold),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                '\$68,47',
                style: priceTextStyle.copyWith(fontSize: 14, fontWeight: medium),
              )
            ],
          ))
        ],
      ),
    );
  }
}
