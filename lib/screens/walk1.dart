import 'package:flutter/material.dart';

class Walk1Screen extends StatelessWidget {
  const Walk1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          const SizedBox(height: 100),
          const Image(
            image: AssetImage("assets/hand.png"),
            height: 200,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 120,
          ),
          const Text(
            'The quickest and',
            style: TextStyle(fontSize: 40, color: Colors.white),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'most ',
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
              Text(
                'Trusted ',
                style: TextStyle(
                  fontSize: 40,
                  color: Color(0xFF00CCFF),
                ),
              ),
              Text(
                'App',
                style: TextStyle(fontSize: 40, color: Colors.white),
              )
            ],
          ),
          const SizedBox(
            height: 60,
          ),
          Padding(
            padding: EdgeInsetsDirectional.symmetric(horizontal: 30),
            child: Text(
              'Our commitment to speed ensures that you are among the first to know. No more waiting – get breaking , developments, and stories at your fingertips, instantly.',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          Positioned(
            bottom: 100,
            child: TextButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey)),
                onPressed: () {},
                child: Container(
                  width: 100,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Next',
                          style: TextStyle(fontSize: 30, color: Colors.white)),
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
