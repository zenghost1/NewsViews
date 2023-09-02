import 'package:flutter/material.dart';
import 'package:newsviews/screens/walk3.dart';

class Walk2Screen extends StatelessWidget {
  const Walk2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          const SizedBox(height: 100),
          const Image(
            image: AssetImage("assets/hand2.png"),
            height: 200,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 60,
          ),
          const Text(
            'Swipe To Refine ',
            style: TextStyle(fontSize: 35, color: Colors.white),
          ),
          const Wrap(
            
            children: [
              Text(
                'Your ',
                style: TextStyle(fontSize: 35, color: Colors.white),
              ),
              Text(
                'News ',
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.white,
                ),
              ),
              Text(
                'Preferences',
                style: TextStyle(fontSize: 35, color: Color(0xFF00CCFF),),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsetsDirectional.symmetric(horizontal: 30),
            child: Text(
              "Swipe right for what matters, left for what doesn't. Refine your experience.",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ),
          const SizedBox(
            height: 90,
          ),
          Positioned(
            bottom: 100,
            child: TextButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey)),
                onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context) =>Walk3Screen()) );},
                child: Container(
                  width: 100,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Next',
                          style: TextStyle(fontSize: 20, color: Colors.white)),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.white,
                      )
                    ],
                  ),
                )),
          )
        ],
      ),
    );
  }
}
