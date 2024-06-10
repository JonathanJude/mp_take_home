import 'package:flutter/material.dart';
import 'package:moniepoint_test/animations/app_animations.dart';
import 'package:moniepoint_test/main.dart';

import '../widgets/home_top_header.dart';
import '../widgets/houses_container.dart';
import '../widgets/slide_widget.dart';
import '../widgets/stats_row_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        // height: size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: const [
              0.1,
              0.4,
              0.6,
              1,
            ],
            colors: [
              Colors.white54,
              kOrangeColor.withOpacity(0.2),
              kOrangeColor.withOpacity(0.6),
              kOrangeColor,
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 18,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: kToolbarHeight),
                  const HomeTopHeader(),
                  const SizedBox(height: 14),
                  const Text(
                    "Hi, Marina",
                    style: TextStyle(
                      color: kSecondaryTextColor,
                      fontFamily: kFontFamily,
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ).hiMarina,
                  const SizedBox(height: 8),
                  const Text(
                    "let's select your \nperfect place",
                    style: TextStyle(
                      height: 1.1,
                      color: Colors.black87,
                      fontFamily: kFontFamily,
                      fontSize: 38,
                      fontWeight: FontWeight.w500,
                    ),
                  ).selectPerfectPlace,
                  const SizedBox(height: 22),
                  const StatsRowWidget().statsRow,
                ],
              ),
            ),
            Column(
              children: [
                const HousesContainer(
                  padding: 10,
                  imageUrl: "assets/images/home_image_1.jpg",
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: SlideWidget(
                      text: "Gladkova St., 25",
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: HousesContainer(
                          heightFactor: 0.5,
                          imageUrl: "assets/images/home_image_2.jpg",
                          child: Align(
                              alignment: Alignment.bottomCenter,
                              child: SlideWidget(
                                text: "Gubina St., 11",
                              )),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            HousesContainer(
                              imageUrl: "assets/images/home_image_3.jpg",
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: SlideWidget(
                                  text: "Sedova St., 22",
                                ),
                              ),
                            ),
                            HousesContainer(
                              imageUrl: "assets/images/home_image_3.jpg",
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: SlideWidget(
                                  text: "Sedova St., 22",
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 48,
                  color: Colors.white,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
