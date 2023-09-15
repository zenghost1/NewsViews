import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:provider/provider.dart';

import '../providers/card_provider.dart';
import '../widgets/tindercard.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedItemPosition = 2;
  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff00ccff).withOpacity(0.4),
              Colors.black,
            ],
          ),
        ),
        child: Scaffold(
          extendBody: true,
          bottomNavigationBar: SnakeNavigationBar.color(
            backgroundColor: Color(0xFF999999).withOpacity(0.3),
            behaviour: SnakeBarBehaviour.floating,
            snakeShape: const SnakeShape(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(80))),
                centered: false,
                padding: EdgeInsets.all(4)),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(50))),
            padding: const EdgeInsets.only(bottom: 20, right: 50, left: 50),
            snakeViewColor: Color(0xFFdadada),
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.white,
            showUnselectedLabels: false,
            showSelectedLabels: false,
            currentIndex: _selectedItemPosition,
            onTap: (index) => setState(() => _selectedItemPosition = index),
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home)),
              BottomNavigationBarItem(icon: Icon(Icons.wb_cloudy_outlined)),
              BottomNavigationBarItem(
                  icon: Icon(Icons.monetization_on_outlined)),
              BottomNavigationBarItem(icon: Icon(Icons.monitor_heart))
            ],
          ),
          backgroundColor: Colors.black,
          body: Container(
            alignment: Alignment.center,
            child: Column(
              children: [
                Expanded(child: buildCards()),
                // const SizedBox(height: 16),
                // buildButtons(),
              ],
            ),
          ),
        ),
      );

  Widget buildCards() {
    final provider = Provider.of<CardProvider>(context);
    final users = provider.users;

    return users.isEmpty
        ? Center(
            child: Text(
              '💔  The End.',
              style: TextStyle(
                fontSize: 42,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          )
        : Stack(
            children: users
                .map((user) => TinderCard(
                      user: user,
                      isFront: users.last == user,
                    ))
                .toList(),
          );
  }

  Widget buildButtons() {
    final provider = Provider.of<CardProvider>(context);
    final users = provider.users;
    final status = provider.getStatus();
    final isLike = status == CardStatus.like;
    final isDislike = status == CardStatus.dislike;
    final isSuperLike = status == CardStatus.superLike;

    return users.isEmpty
        ? ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            child: Text(
              'Restart',
              style: TextStyle(color: Colors.black),
            ),
            onPressed: () {
              final provider =
                  Provider.of<CardProvider>(context, listen: false);

              provider.resetUsers();
            },
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                style: ButtonStyle(
                  foregroundColor:
                      getColor(Colors.red, Colors.white, isDislike),
                  backgroundColor:
                      getColor(Colors.white, Colors.red, isDislike),
                  side: getBorder(Colors.red, Colors.white, isDislike),
                ),
                child: Icon(Icons.clear, size: 46),
                onPressed: () {
                  final provider =
                      Provider.of<CardProvider>(context, listen: false);

                  provider.dislike();
                },
              ),
              ElevatedButton(
                style: ButtonStyle(
                  foregroundColor:
                      getColor(Colors.blue, Colors.white, isSuperLike),
                  backgroundColor:
                      getColor(Colors.white, Colors.blue, isSuperLike),
                  side: getBorder(Colors.blue, Colors.white, isSuperLike),
                ),
                child: Icon(Icons.star, size: 40),
                onPressed: () {
                  final provider =
                      Provider.of<CardProvider>(context, listen: false);

                  provider.superLike();
                },
              ),
              ElevatedButton(
                style: ButtonStyle(
                  foregroundColor: getColor(Colors.teal, Colors.white, isLike),
                  backgroundColor: getColor(Colors.white, Colors.teal, isLike),
                  side: getBorder(Colors.teal, Colors.white, isLike),
                ),
                child: Icon(Icons.favorite, size: 40),
                onPressed: () {
                  final provider =
                      Provider.of<CardProvider>(context, listen: false);

                  provider.like();
                },
              ),
            ],
          );
  }

  MaterialStateProperty<Color> getColor(
      Color color, Color colorPressed, bool force) {
    final getColor = (Set<MaterialState> states) {
      if (force || states.contains(MaterialState.pressed)) {
        return colorPressed;
      } else {
        return color;
      }
    };

    return MaterialStateProperty.resolveWith(getColor);
  }

  MaterialStateProperty<BorderSide> getBorder(
      Color color, Color colorPressed, bool force) {
    final getBorder = (Set<MaterialState> states) {
      if (force || states.contains(MaterialState.pressed)) {
        return BorderSide(color: Colors.transparent);
      } else {
        return BorderSide(color: color, width: 2);
      }
    };

    return MaterialStateProperty.resolveWith(getBorder);
  }
}
