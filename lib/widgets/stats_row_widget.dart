import 'package:countup/countup.dart';
import 'package:flutter/material.dart';
import 'package:moniepoint_test/animations/app_animations.dart';
import 'package:moniepoint_test/main.dart';

class StatsRowWidget extends StatelessWidget {
  const StatsRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height * .2;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: Container(
            height: height,
            padding: const EdgeInsets.all(12),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFFEB9D29),
            ),
            child: Column(
              children: [
                const Text(
                  "BUY",
                  style: TextStyle(
                    color: Colors.white70,
                    fontFamily: kFontFamily,
                  ),
                ),
                const Spacer(),
                _displayCountUp(
                  1034,
                  Colors.white.withOpacity(0.9),
                ),
                const Text(
                  "offers",
                  style: TextStyle(
                    color: Colors.white70,
                    fontFamily: kFontFamily,
                  ),
                ),
                const Spacer(),
              ],
            ),
          )
              .buyCircle,
        ),
        const SizedBox(width: 6),
        Expanded(
          child: Container(
            height: height,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
                color: const Color(0xFFFDFBF7),
                borderRadius: BorderRadius.circular(18)),
            child: Column(
              children: [
                const Text(
                  "RENT",
                  style: TextStyle(
                    color: kSecondaryTextColor,
                    fontFamily: kFontFamily,
                  ),
                ),
                const Spacer(),
                _displayCountUp(
                  2212,
                  kSecondaryTextColor,
                ),
                const Text(
                  "offers",
                  style: TextStyle(
                    color: kSecondaryTextColor,
                    fontFamily: kFontFamily,
                  ),
                ),
                const Spacer(),
              ],
            ),
          )
              .rentSquare,
        ),
      ],
    );
  }

  Widget _displayCountUp(double count, Color color) {
    return Countup(
      begin: 0,
      end: count,
      duration: const Duration(seconds: 2),
      separator: ',',
      style: TextStyle(
        color: color,
        fontFamily: kFontFamily,
        fontSize: 38,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
