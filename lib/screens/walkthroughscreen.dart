import 'package:flutter/material.dart';
import 'package:newsviews/screens/walk1.dart';
import 'package:newsviews/screens/walk2.dart';
import 'package:newsviews/screens/walk3.dart';
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
      backgroundColor: Color(0xFF060606),
      body: Stack(
        children: [
          PageView(controller: pageController, children: [
            Walk1Screen(),
            Walk2Screen(),
            Walk3Screen(),
          ]),
          Positioned(
            bottom: 80,
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SmoothPageIndicator(
                  controller: pageController,
                  count: 3,
                  axisDirection: Axis.horizontal,
                  effect: const ExpandingDotsEffect(
                    dotColor: Color(0xff9e9e9e),
                    activeDotColor: Color(0xFF00CCFF),
                    dotHeight: 4,
                    dotWidth: 18,
                    radius: 16,
                    spacing: 6,
                    expansionFactor: 3,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                TextButton(
                    style: ButtonStyle(
                        overlayColor: MaterialStateProperty.all(
                            Color(0xFF999999).withOpacity(1)),
                        surfaceTintColor: MaterialStateProperty.all(
                            Color(0xFF999999).withOpacity(1)),
                        backgroundColor: MaterialStateProperty.all(
                            Color(0xFF999999).withOpacity(0.6))),
                    onPressed: () {
                      if (pageController.hasClients) {
                        pageController.nextPage(
                            duration: Duration(milliseconds: 700),
                            curve: Curves.decelerate);
                      }
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 9, vertical: 4),
                      // width: 100,
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('Next',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontFamily: 'Sansation-bold')),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.white,
                            size: 18,
                          )
                        ],
                      ),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
