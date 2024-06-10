import 'package:flutter/material.dart';
import 'package:moniepoint_test/animations/app_animations.dart';

import '../main.dart';

class HomeTopHeader extends StatelessWidget {
  const HomeTopHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
            vertical: 12,
            horizontal: 14,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Row(
            children: [
              Icon(
                Icons.location_on,
                size: 20,
                color: kSecondaryTextColor,
              ),
              SizedBox(width: 12),
              Text(
                "Saint Petersburg",
                style: TextStyle(
                  color: kSecondaryTextColor,
                  fontFamily: kFontFamily,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        ).saintPtburg,
        const CircleAvatar(
          backgroundImage: AssetImage("assets/images/avatar.png"),
        ).avatar,
      ],
    );
  }
}
