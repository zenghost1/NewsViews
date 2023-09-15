import 'package:flutter/material.dart';
import 'package:newsviews/screens/signin.dart';
import 'package:newsviews/screens/walk1.dart';
import 'package:newsviews/screens/walk2.dart';
import 'package:newsviews/screens/walk3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:action_slider/action_slider.dart';

class WalkthroughScreen extends StatefulWidget {
  const WalkthroughScreen({super.key});

  @override
  State<WalkthroughScreen> createState() => _WalkthroughScreenState();
}

class _WalkthroughScreenState extends State<WalkthroughScreen> {
  final pageController = PageController();
  int index = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController.addListener(() {
      if (pageController.page!.round() != index) {
        setState(() {
          index = pageController.page!.round();
        });
      }
    });
  }

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

                (index == 2)
                    ? Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: ActionSlider.standard(
                        // sliderBehavior: SliderBehavior.stretch,
                        toggleColor: Color(0xffd9d9d9),
                        backgroundColor: Color(0xff999999).withOpacity(0.2),
                        
                          child: const Text('Get Started',style: TextStyle(fontFamily: "Sansation",fontSize: 18,letterSpacing: 1,color: Color(0xff999999)),),
                          action: (controller) async {
                            controller.loading(); //starts loading animation
                            await Future.delayed(const Duration(seconds: 1));
                            controller.success(); 
                            await Future.delayed(const Duration(seconds: 1));//starts success animation
                            Navigator.push(context,
                              MaterialPageRoute(
                                  builder: (context) => const signin()),);
                        }, 
                          
                        ),
                    )
                    : button1(pageController: pageController)
                // pageController.hasClients
                //     ? pageController.page == 3
                //         ? ActionSlider.standard()
                //         : button1(pageController: pageController)
                //     : Text("Initialization")
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class button1 extends StatelessWidget {
  const button1({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: ButtonStyle(
            overlayColor:
                MaterialStateProperty.all(Color(0xFF999999).withOpacity(1)),
            surfaceTintColor:
                MaterialStateProperty.all(Color(0xFF999999).withOpacity(1)),
            backgroundColor:
                MaterialStateProperty.all(Color(0xFF999999).withOpacity(0.2))),
        onPressed: () {
          if (pageController.hasClients) {
            pageController.nextPage(
                duration: Duration(milliseconds: 700),
                curve: Curves.decelerate);
          }
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 9, vertical: 4),
          height: 49,
          width: 100,
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Next',style: TextStyle(fontFamily: "Sansation",fontSize: 18,letterSpacing: 1,color: Color(0xffdadada))),
              
              Icon(
                Icons.arrow_forward_ios_rounded,
                color: Color(0xffdadada),
                size: 18,
              )
            ],
          ),
        ));
  }
}
