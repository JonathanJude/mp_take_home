import 'package:flutter/material.dart';
import 'package:moniepoint_test/main.dart';

class SlideWidget extends StatelessWidget {
  const SlideWidget({
    super.key,
    required this.text,
    this.showFullSlide = false,
  });
  final String text;
  final bool showFullSlide;

  @override
  Widget build(BuildContext context) {
    final sHeight = showFullSlide ? 38.0 : 48.0;

    return Container(
      height: sHeight,
      margin: const EdgeInsets.symmetric(
        vertical: 18,
        horizontal: 12,
      ),
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        color: Colors.grey.shade200.withOpacity(0.9),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(width: showFullSlide ? sHeight : 4),
          Text(
            text,
            style: const TextStyle(fontSize: 13, fontFamily: kFontFamily),
          ),
          Container(
            height: showFullSlide ? 48 : sHeight,
            width: sHeight,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: const Icon(
              Icons.chevron_right,
              size: 18,
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}
