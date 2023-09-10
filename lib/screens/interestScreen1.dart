import 'package:flutter/material.dart';
import 'package:newsviews/screens/settingsScreen.dart';
import 'package:flip_card/flip_card.dart';

// import 'package:google_fonts/google_fonts.dart';

class interestScreen1 extends StatelessWidget {
  const interestScreen1({super.key});
  // void onTap(bool isSelected, int index) {
  //   bool isSelectionMode = false;
  //   if (isSelectionMode) {
  //     Text("d",style: TextStyle(color: Color(0xFF444444)))

  //   } else {
  //     // Open Detail Page
  //   }
  //   }

  @override
  Widget build(BuildContext context) {
    List<Map> interestNames = [
      {"id": 1, "name": "POLITICS","icon":Icon(Icons.portrait_outlined), "isSelected": false},
      {"id": 2, "name": "SPORTS","icon":Icon(Icons.portrait_outlined), "isSelected": false},
      {"id": 3, "name": "TECHNOLOGY","icon":Icon(Icons.portrait_outlined), "isSelected": false},
      {"id": 4, "name": "CRIME","icon":Icon(Icons.portrait_outlined), "isSelected": false},
      {"id": 5, "name": "BUSINESS","icon":Icon(Icons.portrait_outlined), "isSelected": false},
      {"id": 6, "name": "INTERNATIONAL","icon":Icon(Icons.portrait_outlined), "isSelected": false},
      {"id": 7, "name": "HEALTH","icon":Icon(Icons.portrait_outlined),"isSelected": false},
      {"id": 8, "name": "TRAVEL","icon":Icon(Icons.portrait_outlined), "isSelected": false},
      {"id": 9, "name": "CLIMATE","icon":Icon(Icons.portrait_outlined), "isSelected": false},
      {"id": 10, "name": "ENTERTAINMENT","icon":Icon(Icons.portrait_outlined), "isSelected": false},
      {"id": 11, "name": "AUTOMOBILES","icon":Icon(Icons.portrait_outlined), "isSelected": false},
    ];
    
    Widget customCardFront(String title) {
      return Material(
        color: Color.fromRGBO(68, 68, 68, 0.2),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
        elevation: 8.0,
        child: ListTile(
          tileColor: Color.fromRGBO(68, 68, 68, 0.2),
          visualDensity: VisualDensity(vertical: -2),

          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
          titleAlignment: ListTileTitleAlignment.center,
          // leading:,
          // onTap:() => onTap(selected!,index),
          title: Text(title,
              textAlign: TextAlign.center,
              style: TextStyle(
                  height: 1,
                  fontFamily: 'Sansation-Bold',
                  fontSize: 14,
                  letterSpacing: 2,
                  color: Color(0xFFFAFAFA))),
          // subtitle:,
          // trailing: ,
        ),
      );
    }
    Widget customCardBack(String title) {
      return Material(
        color: Color(0xffdadada),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
        elevation: 8.0,
        child: ListTile(
          tileColor: Color.fromRGBO(68, 68, 68, 0.2),
          visualDensity: VisualDensity(vertical: -2),

          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
          titleAlignment: ListTileTitleAlignment.center,
          // leading:,
          // onTap:() => onTap(selected!,index),
          title: Text(title,
              textAlign: TextAlign.center,
              style: TextStyle(
                  height: 1,
                  fontFamily: 'Sansation-Bold',
                  fontSize: 14,
                  letterSpacing: 2,
                  color: Color(0xff333333))),
          // subtitle:,
          // trailing: ,
        ),
      );
    }

    ;
    bool isSelectionMode = false;
    Map<int, bool> selectedFlag = {};

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF060606),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.symmetric(vertical: 20)),
                    Container(
                      child: Row(
                        children: [
                          Align(
                            // alignment: Alignment.centerLeft,
                            child: Text(
                              "Choose your top ",
                              style: TextStyle(
                                  height: 0.7,
                                  fontFamily: 'Sansation-Bold',
                                  fontSize: 24,
                                  color: Color(0xFFDADADA)),
                            ),
                          ),
                          Text(
                            "3",
                            style: TextStyle(
                                height: 0.7,
                                fontFamily: 'Sansation-Bold',
                                fontSize: 24,
                                color: Color(0xFF00CCFF)),
                          ),
                          Text(
                            "Interests",
                            style: TextStyle(
                                height: 0.7,
                                fontFamily: 'Sansation-Bold',
                                fontSize: 24,
                                color: Color(0xFF00CCFF)),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      child: Align(
                          // alignment: Alignment.topLeft,
                          child: Text(
                        "Help us choose your top interests that are going to be shown in quick view bar.",
                        style: TextStyle(
                            height: 1,
                            fontFamily: 'Sansation',
                            fontSize: 14,
                            color: Color(0xFF999999)),
                      )),
                    ),
                    SizedBox(height: 10),
                    ListView.builder(
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          Map data = interestNames[index];
                          bool selected = data['isSelected'];
                          selectedFlag[index] = selectedFlag[index] ?? false;
                          bool? isSelected = selectedFlag[index];
                          return Container(margin: EdgeInsets.all(3),
                            child: FlipCard(
                                direction: FlipDirection.VERTICAL,
                                speed: 300,
                                front: customCardFront("${data['name']}"),
                                back: customCardBack("${data['name']}")),
                                
                          );
                        },
                        // separatorBuilder:null,
                        itemCount: interestNames.length),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      child: SizedBox(
                        width: 160,
                        child: Container(
                          decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50.0)),
                              color: Color.fromRGBO(68, 68, 68, 0.1)),
                          child: ElevatedButton(
                            child: Text("NEXT",
                                style: TextStyle(
                                    fontFamily: 'Sansation-Bold',
                                    fontSize: 20,
                                    letterSpacing: 1.5,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF00CCff))),
                            style: ElevatedButton.styleFrom(
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                primary: Colors.transparent,
                                shadowColor: Colors.transparent,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 40.0, vertical: 10.0),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50.0))),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => settingsScreen()));
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
