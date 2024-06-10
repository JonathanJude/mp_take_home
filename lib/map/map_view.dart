import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:moniepoint_test/animations/app_animations.dart';
import 'package:moniepoint_test/main.dart';

import 'widgets/map_market.dart';

class AppMapView extends StatelessWidget {
  const AppMapView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Stack(
      children: [
        Container(
          color: Colors.black.withOpacity(0.8),
          height: size.height,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                const SizedBox(height: kToolbarHeight),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 12.0,
                    horizontal: 14,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding:
                                const EdgeInsets.symmetric(vertical: 16),
                            fillColor: Colors.white,
                            filled: true,
                            prefixIcon: const Icon(Icons.search, size: 36),
                            hintText: "Saint Petersburg",
                            hintStyle: const TextStyle(
                              color: Colors.black,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        )
                            .fadeScale,
                      ),
                      const SizedBox(width: 10),
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(MdiIcons.filterVariant),
                      )
                          .fadeScale,
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        const MapMarket(
                top: 150,
                left: 30,
                text: "25mn",
              ),
              const MapMarket(
                top: 350,
                left: 60,
                text: "13mn",
              ),
              const MapMarket(
                top: 180,
                left: 150,
                text: "50mn",
              ),
              const MapMarket(
                top: 300,
                left: 220,
                text: "15mn",
              ),
              const MapMarket(
                top: 500,
                left: 200,
                text: "20mn",
              ),
              
        Positioned(
          bottom: 140,
          left: 32,
          right: 0,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  _locationOption(MdiIcons.layersTriple)
                      .fadeScale,
                  const SizedBox(height: 10),
                  _locationOption(MdiIcons.navigationVariant)
                      .fadeScale,
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 28.0),
                child: _listofVariantsButton()
                    .fadeScale,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _locationOption(IconData icon) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey.shade700.withOpacity(0.7),
        shape: BoxShape.circle,
      ),
      child: Icon(
        icon,
        color: Colors.white60,
      ),
    );
  }

  Widget _listofVariantsButton() {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey.shade700.withOpacity(0.7),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        children: [
          Icon(
            MdiIcons.filterVariant,
            color: Colors.white60,
          ),
          const SizedBox(width: 10),
          const Text(
            "List of variants",
            style: TextStyle(
              fontFamily: kFontFamily,
              color: Colors.white60,
            ),
          ),
        ],
      ),
    );
  }
}
