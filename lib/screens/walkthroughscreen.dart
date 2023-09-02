import 'package:flutter/material.dart';
import 'package:newsviews/screens/walk1.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WalkthroughScreen extends StatefulWidget {
  const WalkthroughScreen({super.key});

  @override
  State<WalkthroughScreen> createState() => _WalkthroughScreenState();
}

class _WalkthroughScreenState extends State<WalkthroughScreen> {
  final pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(controller: pageController, children: [
            Walk1Screen(),
            
          ]),
          Positioned(
            bottom: 200,
            left: 0,
            right: 0,
            child: Align(
              alignment: Alignment.center,
              child: SmoothPageIndicator(
                controller: pageController,
                count: 2,
                axisDirection: Axis.horizontal,
                effect: const ExpandingDotsEffect(
                  dotColor: Color(0xff9e9e9e),
                  activeDotColor: Color(0xFF00CCFF),
                  dotHeight: 3,
                  dotWidth: 16,
                  radius: 16,
                  spacing: 8,
                  expansionFactor: 3,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
