import 'package:flutter/material.dart';
import 'package:newsviews/screens/signin.dart';

class Walk3Screen extends StatelessWidget {
  const Walk3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          const SizedBox(height: 100),
          const Image(
            image: AssetImage("assets/hand1.png"),
            height: 200,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 60,
          ),
          const Text(
            'Serving News in ',
            style: TextStyle(fontSize: 35, color: Colors.white),
          ),
          const Wrap(
            
            children: [
              Text(
                'Your ',
                style: TextStyle(fontSize: 35, color: Colors.white),
              ),
              Text(
                'Flavour',
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
              "Tailored precisely to your preferences. Our AI algorithms learn from your interactions, ensuring the content you see aligns perfectly with your interests.",
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
                onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context) =>signin()) );},
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
