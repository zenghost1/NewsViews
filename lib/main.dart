import 'package:flutter/material.dart';
import 'package:newsviews/screens/homescreen.dart';
import 'providers/card_provider.dart';
import 'screens/screens.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => CardProvider(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'NewsViews',
          home: HomeScreen(),
          // theme: ThemeData(
          //   primarySwatch: Colors.red,
          //   elevatedButtonTheme: ElevatedButtonThemeData(
          //     style: ElevatedButton.styleFrom(
          //       textStyle: TextStyle(fontSize: 32),
          //       elevation: 8,
          //       primary: Colors.white,
          //       shape: CircleBorder(),
          //       minimumSize: Size.square(80),
          //     ),
          //   ),
          // ),
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey),
            useMaterial3: true,
          ),
        ),
      );
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'NewsViews',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey),
//         useMaterial3: true,
//       ),
//       home: HomeScreen(),
//     );
//   }
// }
