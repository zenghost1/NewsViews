import 'package:flutter/material.dart';
import 'package:newsviews/core/themes/themes.dart';

import 'package:newsviews/util/bookmarkGrid.dart';
import 'package:newsviews/widgets/backButton.dart';
import 'package:newsviews/widgets/boldTextFuncs.dart';

// import 'package:google_fonts/google_fonts.dart';

class bookmarkScreen extends StatelessWidget {
  const bookmarkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: darkbgcolor,
        appBar: AppBar(
            surfaceTintColor: Colors.transparent,
            shadowColor: Colors.transparent,
            // scrolledUnderElevation: 1,
            // elevation: 0.0,
            backgroundColor: Colors.transparent,
            leading: backButton(),
            centerTitle: true,
            title: boldTextFuncs(s: "Bookmarks")),
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
                          style: TextStyle(
                              fontFamily: 'Sansation',
                              color: white3,
                              fontSize: 16,
                              height: 1),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: grey2.withOpacity(0.5),
                            hintStyle: TextStyle(
                                fontFamily: 'Sansation',
                                color: white3.withOpacity(0.7),
                                fontSize: 16),
                            hintText: "Search",
                            contentPadding: EdgeInsets.symmetric(vertical: 1),
                            prefixIcon: Icon(Icons.search_rounded,
                                color: white3.withOpacity(0.9)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide.none),
                          )),
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
