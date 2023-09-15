import 'package:flutter/material.dart';
import 'package:newsviews/screens/homescreen.dart';
import 'providers/card_provider.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';
import 'package:newsviews/screens/screens.dart';
import 'package:provider/provider.dart';
import 'package:newsviews/screens/signin.dart';
import 'package:newsviews/screens/splashScreen.dart';

Future main() async{
  await Settings.init(cacheProvider:SharePreferenceCache());
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NewsViews',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey),
        useMaterial3: true,
      ),
      home: HomeScreen(),
    );
  }
}
