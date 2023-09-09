import 'package:flutter/material.dart';

class bookmarkGrid extends StatelessWidget {
  final List<String> userBookmarks = [];
  bookmarkGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      clipBehavior: Clip.antiAliasWithSaveLayer,
  
      child: GridView.builder(
        
          itemCount: 100,
          gridDelegate:
          
          SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 150,mainAxisExtent: 200),
          
              // SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(2),
              child: Container(
                decoration: BoxDecoration(color: Color(0xff444444).withOpacity(0.5),image:DecorationImage(image: AssetImage("assets/homebg.jpg"),fit: BoxFit.cover),borderRadius: BorderRadius.circular(10)),child:Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                  Column(
                    children: [
                      Padding(padding:EdgeInsets.symmetric(vertical: 2)),
                      Wrap(
                    children: [
                      Text("This is the day when G20 Summit was started",textAlign: TextAlign.center,style: TextStyle(height: 1,fontSize: 12,color: Color(0xffdadada).withOpacity(0.9)),),
                    ],
                  ),
                    ],
                  ),
                  
                  Align(alignment: Alignment.bottomRight,
                    child: Text("6 hrs ago",style: TextStyle(fontFamily: "Sansation",color:Color(0xffdadada),fontSize: 10),))
                ],
                ) ,
                
                
              ),
            );
          }),
    );
  }
}
