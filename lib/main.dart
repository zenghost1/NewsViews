import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';
import 'package:newsviews/screens/signin.dart';
import 'package:newsviews/screens/walk1.dart';
import 'screens/screens.dart';


Future main() async{
  await Settings.init(cacheProvider:SharePreferenceCache());
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NewsViews',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey),
        useMaterial3: true,
      ),
      home: signin(),
    );
  }
}
