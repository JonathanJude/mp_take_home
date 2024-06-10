import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

extension AppAnimations on Widget {
  Animate get hiMarina {
    return animate().fade(duration: const Duration(milliseconds: 1200));
  }

  Animate get selectPerfectPlace {
    return animate()
        .fade(
          duration: const Duration(milliseconds: 200),
        )
        .slideY(
          duration: const Duration(milliseconds: 1200),
          begin: .5,
          end: 0,
        );
  }

  Animate get statsRow {
    return animate()
        .fade(
          duration: const Duration(milliseconds: 200),
        )
        .slideY(
          duration: const Duration(milliseconds: 1200),
          begin: .5,
          end: 0,
        );
  }

  Animate get navBar {
    return animate().slideY(
      duration: const Duration(milliseconds: 1200),
      begin: 1.1,
      end: 0,
      delay: const Duration(milliseconds: 1800),
    );
  }

  Animate get mapMarker {
    return animate().scale(
      duration: const Duration(milliseconds: 1000),
    );
  }

  Animate get saintPtburg {
    return animate().fade(
      duration: const Duration(milliseconds: 1500),
      delay: const Duration(milliseconds: 800),
    );
  }

  Animate get avatar {
    return animate().fade(duration: const Duration(milliseconds: 1200)).scale();
  }

  Animate get buyCircle {
    return animate()
        .fade(
            duration: const Duration(milliseconds: 1200),
            delay: const Duration(milliseconds: 10))
        .scale();
  }

  Animate get rentSquare {
    return animate()
        .fade(
            duration: const Duration(milliseconds: 1200),
            delay: const Duration(milliseconds: 10))
        .scale();
  }

  Animate get slideAnim {
    return animate().slideX(
                                  duration: const Duration(milliseconds: 1100),
                                );
  }

  Animate get fadeScale {
    return animate()
                    .fade(duration: const Duration(milliseconds: 1200))
                    .scale();
  }
}
