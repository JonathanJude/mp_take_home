import 'package:flutter/material.dart';
import 'package:moniepoint_test/animations/app_animations.dart';
import 'package:moniepoint_test/main.dart';

class MapMarket extends StatelessWidget {
  final double? top;
  final double? bottom;
  final double? left;
  final double? right;
  final String text;

  const MapMarket({
    super.key,
    this.top,
    this.bottom,
    this.left,
    required this.text,
    this.right,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      bottom: bottom,
      left: left,
      right: right,
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 14,
          horizontal: 24,
        ),
        decoration: const BoxDecoration(
          color: kOrangeColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
            bottomRight: Radius.circular(16),
          ),
        ),
        child: const Text(
          "11 km",
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontFamily: kFontFamily,
          ),
        ),
      ).mapMarker,
    );
  }
}
