import 'package:flutter/material.dart';
import 'package:moniepoint_test/animations/app_animations.dart';

class HousesContainer extends StatelessWidget {
  const HousesContainer({
    super.key,
    required this.child,
    required this.imageUrl,
    this.padding = 4,
    this.heightFactor = 0.25,
  });
  final Widget child;
  final String imageUrl;
  final double padding;
  final double heightFactor;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      height: size.height * heightFactor,
      width: size.width,
      padding: EdgeInsets.symmetric(
        vertical: padding,
        horizontal: 5,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          image: DecorationImage(
            image: AssetImage(imageUrl),
            fit: BoxFit.cover,
          ),
        ),
        child: child.slideAnim,
      ),
    );
  }
}
