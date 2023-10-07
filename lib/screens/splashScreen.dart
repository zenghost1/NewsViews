import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:newsviews/core/themes/themes.dart';
// import 'package:newsviews/screens/signin.dart';
import 'package:newsviews/screens/walkthroughscreen.dart';
// import 'package:flutter_native_splash/flutter_native_splash.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 1), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => WalkthroughScreen()));
    });
    void dispose() {
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
          overlays: SystemUiOverlay.values);
      super.dispose();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xff060606),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                image: AssetImage("assets/newsViewsLogo.png"),
                width: 120,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "News Views",
                style: TextStyle(
                    fontFamily: "Sansation-Bold",
                    fontSize: 34,
                    color: white2.withOpacity(0.9)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
