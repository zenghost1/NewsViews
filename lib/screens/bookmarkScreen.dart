import 'package:flutter/material.dart';

import 'package:newsviews/util/bookmarkGrid.dart';

// import 'package:google_fonts/google_fonts.dart';

class bookmarkScreen extends StatelessWidget {
  const bookmarkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF060606),
        appBar: AppBar(
          surfaceTintColor: Colors.transparent,
          shadowColor: Colors.transparent,
          // scrolledUnderElevation: 1,
          // elevation: 0.0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            style: ButtonStyle(
                minimumSize:
                    MaterialStateProperty.all<Size>(const Size.fromRadius(22)),
                shape: MaterialStateProperty.all<OutlinedBorder>(
                    const CircleBorder()),
                backgroundColor: MaterialStateProperty.all(
                    const Color(0xFF444444).withOpacity(0.6))),
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              weight: 40,
              size: 22,
              color: Color(0xFF00CCFF),
            ),
            onPressed: () => Navigator.of(context).pop(),
            
          ),
          centerTitle: true,
          
          title: Text(
                  'BookMarks',
                  style: TextStyle(
                      fontSize: 22,
                      letterSpacing: 1,
                      fontFamily: "Sansation-Bold",
                      color: Color(0xffdadada)),
                )
              
        
             
                
            
          ),
        
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: TextField(
                        
                        style: TextStyle(fontFamily: 'Sansation',
                                color: Color(0xffdadada), fontSize: 16,height:1),
                                
                        // padding: EdgeInsets.all(6),
                        
                        decoration: InputDecoration(filled:true,fillColor:Color(0xff444444).withOpacity(0.5),hintStyle: TextStyle(fontFamily: 'Sansation',
                                color: Color(0xffdadada).withOpacity(0.7), fontSize: 16),hintText: "Search",contentPadding: EdgeInsets.symmetric(vertical: 1),prefixIcon:Icon(Icons.search_rounded, color: Color(0xffdadada).withOpacity(0.9)),border: OutlineInputBorder(borderRadius: BorderRadius.circular(8),borderSide:BorderSide.none ),)
                        
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(child: bookmarkGrid())
          ],
        ),
      ),
    );
  }
}
