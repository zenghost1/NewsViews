import 'package:flutter/material.dart';
import 'package:newsviews/screens/bookmarkScreen.dart';
// import 'package:flutter_settings_screens/flutter_settings_screens.dart';
import 'package:newsviews/screens/otp.dart';
import 'package:flutter/cupertino.dart';


// import 'package:google_fonts/google_fonts.dart';
class settingsScreen extends StatefulWidget {
  const settingsScreen({super.key});

  @override
  State<settingsScreen> createState() => _settingsScreenState();
}

class _settingsScreenState extends State<settingsScreen> {
  // static const keyLanguage = "key-Language";
  bool isSwitched = true;
  bool isNotiSwitched=true;
  String? textValueChoose;
  List textSizeList=["Size 1","Size 2","Size 3","Size 4"];
  String? langValueChoose;
  List langList=["English","हिंदी"];
  @override
  Widget build(BuildContext context) {
    // Widget buildTellYourFriend() => SimpleSettingsTile(
    //       title: "Tell Your Friend",
    //       subtitle: '',
    //       leading: Icon(Icons.people_rounded),
    //       child: Row(
    //         children: [Icon(Icons.abc)],),
    //     );
    // Widget buildHelp() => SimpleSettingsTile(
    //       title: "Help",
    //       subtitle: '',
    //       leading: Icon(Icons.help),
    //       child: Row(
    //         children: [Icon(Icons.abc)],),
    //     );
    // Widget buildAbout() => SimpleSettingsTile(
    //       title: "About",
    //       subtitle: '',
    //       leading: Icon(Icons.info),
    //       child: Row(
    //         children: [Icon(Icons.abc)],),
    //     );
    // Widget buildReportABug() => SimpleSettingsTile(
    //       title: "Report A Bug",
    //       subtitle: '',
    //       leading: Icon(Icons.bug_report_outlined),
    //       child: Row(
    //         children: [Icon(Icons.abc)],),
    //     );
    // Widget buildSendFeedback() => SimpleSettingsTile(
    //       title: "Send Feedback",
    //       subtitle: '',
    //       leading: Icon(Icons.feedback_outlined),
    //       child: Row(
    //         children: [Icon(Icons.abc)],),
    //     );

    // Widget buildLanguage() => DropDownSettingsTile(
    //     title: "Language",
    //     leading: Icon(Icons.language_outlined),
    //     settingKey: keyLanguage,
    //     selected: 1,
    //     values: <int, String>{1: "Eng(Ind)", 2: "Hindi"});
    // Widget buildFontSettings() => SimpleSettingsTile(
    //       title: "Font Settings",
    //       subtitle: '',
    //       leading: Icon(Icons.settings),
    //       child: Row(
    //         children: [Icon(Icons.abc)],),
    //     );
    // Widget buildNotifications() => SimpleSettingsTile(
    //       title: "Notifications",
    //       subtitle: '',
    //       leading: Icon(Icons.notifications_active_outlined),
    //       child: Row(
    //         children: [Icon(Icons.abc)],),
    //     );
    // Widget buildYourBookmarks() => SimpleSettingsTile(
    //       title: "Your Bookmarks",
    //       subtitle: '',
    //       leading: Icon(Icons.bookmark_added_outlined),
    //       child: Row(
    //         children: [Icon(Icons.abc)],),
    //     );
    // Widget buildQuickPreferenceBar() => SimpleSettingsTile(
    //       title: "Quick Preference Bar",
    //       subtitle: '',
    //       leading: Icon(Icons.remove_red_eye_outlined),
    //       child: Row(
    //         children: [Icon(Icons.abc)],),
    //     );
    // Widget buildEraseRelevanceHistory() => SimpleSettingsTile(
    //       title: "Erase Relevance History",
    //       subtitle: '',
    //       leading: Icon(Icons.cancel_outlined),
    //     );

    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
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
        ),
        
        backgroundColor: Color(0xFF060606),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 40,),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        SizedBox(
                          height: 100,
                          width: 100,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image(
                                  image: AssetImage("assets/profile.jpg"),
                                  width: 40)),
                        ),
                        Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              width: 24,
                              height: 24,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Color(0xFF00ccff).withOpacity(0.8)),
                              child: const Icon(
                                Icons.mode_edit_outlined,
                                size: 18,
                              ),
                            ))
                      ],
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Pravesh Gupta",
                      style: TextStyle(
                          height: 1,
                          fontFamily: 'Sansation',
                          letterSpacing: 3,
                          fontSize: 28,
                          color: Color(0xFFfafafa)),
                    ),
                    SizedBox(height: 3),
                    Text(
                      "praveshguptakuwait@gmail.com",
                      style: TextStyle(
                          height: 1,
                          fontFamily: 'Harmattan-Bold',
                          letterSpacing: 0.5,
                          fontSize: 15,
                          color: Color(0xFF999999)),
                    ),

                    SizedBox(height: 15),
                    Container(
                      // color: Color(0xff444444),
                      decoration: BoxDecoration(
                          color: Color(0xff444444).withOpacity(0.25),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 6),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 5)),
                                    Icon(
                                      Icons.dark_mode_sharp,
                                      color: Color(0xFF333333),
                                      size: 22,
                                    ),
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 7)),
                                    Text(
                                      "Dark Mode",
                                      style: TextStyle(
                                        fontFamily: 'Harmattan',
                                        fontSize: 22,
                                        letterSpacing: 1,
                                        color:
                                            Color(0xFFfafafa).withOpacity(0.7),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Switch(
                                      value: isSwitched,
                                      activeTrackColor: Color(0xff333333).withOpacity(0.7),
                                      activeColor: Color(0xFF00CCFF),
                                      onChanged: (darkvalue) {
                                        setState(() {
                                          isSwitched = darkvalue;
                                        });
                                      },
                                    ),
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 5)),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 15),
                    Container(
                      // color: Color(0xff444444),
                      decoration: BoxDecoration(
                          color: Color(0xff444444).withOpacity(0.25),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Column(
                        children: [
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Container(
                                width: 3,
                                height: 22,
                                decoration: BoxDecoration(
                                    color: Color(0xff00ccff).withOpacity(0.7),
                                    borderRadius: BorderRadius.circular(15)),
                              ),
                              // Icon(Icons.)
                              Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 4)),
                              Text(
                                "Interest Configurations",
                                style: TextStyle(
                                    fontFamily: 'Harmattan-Bold',
                                    fontSize: 22,
                                    
                                    color: Color(0xFFfafafa).withOpacity(0.7)),
                              )
                            ],
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 8,right: 8,bottom:8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 5),
                                  child: Row(
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 5)),
                                      Icon(
                                        Icons.bookmark_outline_rounded,
                                        color: Color(0xFF333333),
                                        size: 20,
                                      ),
                                      Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 9)),
                                      Text(
                                        "Your Bookmarks",
                                        style: TextStyle(
                                          fontFamily: 'Harmattan',
                                          fontSize: 21,
                                          
                                          
                                          color: Color(0xFFfafafa)
                                              .withOpacity(0.7),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.arrow_forward_ios_rounded,
                                      color: Color(0xFF333333),
                                      size: 15,
                                    ),
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10)),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          
                          Divider(
                            thickness: 0.2,
                            color: Color(0xFF333333),
                            height: 0,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 5),
                                  child: Row(
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 5)),
                                      Icon(
                                        Icons.remove_red_eye_outlined,
                                        color: Color(0xFF333333),
                                        size: 20,
                                      ),
                                      Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 9)),
                                      Text(
                                        "Quick Preference Bar",
                                        style: TextStyle(
                                          fontFamily: 'Harmattan',
                                          fontSize: 21,
                                          
                                          color: Color(0xFFfafafa)
                                              .withOpacity(0.7),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.arrow_forward_ios_rounded,
                                      color: Color(0xFF333333),
                                      size: 15,
                                    ),
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10)),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          
                          Divider(
                            thickness: 0.2,
                            color: Color(0xFF333333),
                            height: 0,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 5),
                                  child: Row(
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 5)),
                                      Icon(
                                        Icons.cancel_outlined,
                                        color: Color(0xFF333333),
                                        size: 20,
                                      ),
                                      Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 9)),
                                      Text(
                                        "Erase Relevance History",
                                        style: TextStyle(
                                          fontFamily: 'Harmattan',
                                          fontSize: 21,
                                          
                                          color: Color(0xFFfafafa)
                                              .withOpacity(0.7),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.info_outline,
                                      color: Color(0xFF333333),
                                      size: 15,
                                    ),
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10)),
                                  ],
                                ),
                              ],
                            ),
                          ),
                         
                        ],
                      ),
                    ),

                    SizedBox(height: 15),
                    Container(
                      // color: Color(0xff444444),
                      decoration: BoxDecoration(
                          color: Color(0xff444444).withOpacity(0.25),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Column(
                        children: [
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Container(
                                width: 3,
                                height: 22,
                                decoration: BoxDecoration(
                                    color: Color(0xff00ccff).withOpacity(0.7),
                                    borderRadius: BorderRadius.circular(15)),
                              ),
                              // Icon(Icons.)
                              Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 4)),
                              Text(
                                "Settings",
                                style: TextStyle(
                                    fontFamily: 'Harmattan-Bold',
                                    fontSize: 22,
                                    
                                    color: Color(0xFFfafafa).withOpacity(0.7)),
                              )
                            ],
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 8,right: 8,bottom:8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 5),
                                  child: Row(
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 5)),
                                      Icon(
                                        Icons.notifications_active,
                                        color: Color(0xFF333333),
                                        size: 20,
                                      ),
                                      Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 9)),
                                      Text(
                                        "Notifications",
                                        style: TextStyle(
                                          fontFamily: 'Harmattan',
                                          fontSize: 21,
                                          
                                          color: Color(0xFFfafafa)
                                              .withOpacity(0.7),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    Transform.scale(scaleX: 0.85,scaleY: 0.8,
                                      child: Switch(
                                        value: isNotiSwitched,
                                        activeTrackColor: Color(0xff333333).withOpacity(0.7),
                                        activeColor: Color(0xFF00CCFF).withOpacity(0.7),
                                        onChanged: (notivalue) {
                                          setState(() {
                                            isNotiSwitched = notivalue;
                                          });
                                        },
                                      ),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 6)),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          
                          Divider(
                            thickness: 0.2,
                            color: Color(0xFF333333),
                            height: 0,
                          ),
                          ExpansionTile(
                            leading: Icon(
                              Icons.text_fields_rounded,
                              color: Color(0xFF333333),
                              size: 20,
                            ),
                            title: Text(
                              "Font Settings",
                              style: TextStyle(
                                fontFamily: 'Harmattan',
                                fontSize: 21,
                                
                                color: Color(0xFFfafafa).withOpacity(0.7),
                              ),
                            ),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            collapsedTextColor:
                                Color(0xFFfafafa).withOpacity(0.7),
                            collapsedIconColor: Color(0xFF333333),
                            textColor: Color(0xff00ccff),
                            iconColor: Color(0xff00ccff),
                            controlAffinity: ListTileControlAffinity.platform,
                            childrenPadding: EdgeInsets.symmetric(
                                horizontal: 14, vertical: 0),
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8,right: 8,bottom:6),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 5)),
                                        Icon(
                                          Icons.closed_caption_off,
                                          color: Color(0xFF333333),
                                          size: 20,
                                        ),
                                        Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 9)),
                                        Text(
                                          "Caption Size",
                                          style: TextStyle(
                                            fontFamily: 'Harmattan',
                                            fontSize: 20,
                                            
                                            color: Color(0xFFfafafa)
                                                .withOpacity(0.7),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        
                                        Container(decoration: BoxDecoration(color: Color(0xff444444).withOpacity(0.2),borderRadius: BorderRadius.circular(10)),
                                          child: DropdownButton(
                                            padding: EdgeInsets.symmetric(vertical: 5,horizontal:4),
                                            
                                            elevation: 10,
                                            isDense: true,
                                            underline: SizedBox(),
                                            borderRadius: BorderRadius.circular(15),
                                            alignment: Alignment.center,
                                            style: TextStyle(
                                              fontFamily: 'Harmattan',
                                              fontSize: 18,
                                              
                                        
                                              
                                              color: Color(0xFFdadada)
                                                  .withOpacity(0.7),
                                            ),
                                            hint: Text("Select Size",style: TextStyle(fontSize: 16,color: Color(0xFFdadada).withOpacity(0.7)), ),
                                            disabledHint: Text("Select Size"),
                                            icon: Icon(Icons.keyboard_arrow_down_rounded,color: Color(0xFF344444),
                                                                              size: 20,),
                                                                              dropdownColor: Color(0xff262626),
                                                                              
                                            value: textValueChoose,
                                            items: textSizeList.map((valueItem){return DropdownMenuItem(value: valueItem,alignment: Alignment.center,child: Text(valueItem));} ).toList(),
                                            onChanged: (newValue) {
                                              setState(() {
                                                textValueChoose = newValue as String;
                                              });
                                            },
                                            
                                        
                                            
                                          ),
                                        ),
                                        Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 10)),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Divider(
                                thickness: 0.2,
                                color: Color(0xFF333333),
                                height: 0,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 6),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 5)),
                                        Icon(
                                          Icons.closed_caption_off,
                                          color: Color(0xFF333333),
                                          size: 20,
                                        ),
                                        Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 9)),
                                        Text(
                                          "Text Size",
                                          style: TextStyle(
                                            fontFamily: 'Harmattan',
                                            fontSize: 20,
                                            
                                            color: Color(0xFFfafafa)
                                                .withOpacity(0.7),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        
                                        Container(decoration: BoxDecoration(color: Color(0xff444444).withOpacity(0.2),borderRadius: BorderRadius.circular(10)),
                                          child: DropdownButton(
                                            padding: EdgeInsets.symmetric(vertical: 5,horizontal:4),
                                            
                                            elevation: 10,
                                            isDense: true,
                                            underline: SizedBox(),
                                            borderRadius: BorderRadius.circular(15),
                                            alignment: Alignment.center,
                                            style: TextStyle(
                                              fontFamily: 'Harmattan',
                                              fontSize: 18,
                                              
                                        
                                              
                                              color: Color(0xFFdadada)
                                                  .withOpacity(0.7),
                                            ),
                                            hint: Text("Select Size",style: TextStyle(fontSize: 16,color: Color(0xFFdadada).withOpacity(0.7)), ),
                                            disabledHint: Text("Select Size"),
                                            icon: Icon(Icons.keyboard_arrow_down_rounded,color: Color(0xFF344444),
                                                                              size: 20,),
                                                                              dropdownColor: Color(0xff262626),
                                                                              
                                            value: textValueChoose,
                                            items: textSizeList.map((valueItem){return DropdownMenuItem(value: valueItem,alignment: Alignment.center,child: Text(valueItem));} ).toList(),
                                            onChanged: (newValue) {
                                              setState(() {
                                                textValueChoose = newValue as String;
                                              });
                                            },
                                            
                                        
                                            
                                          ),
                                        ),
                                        Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 10)),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                         
                          Divider(
                            thickness: 0.2,
                            color: Color(0xFF333333),
                            height: 0,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 5)),
                                    Icon(
                                      Icons.language,
                                      color: Color(0xFF333333),
                                      size: 20,
                                    ),
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 9)),
                                    Text(
                                      "Language",
                                      style: TextStyle(
                                        fontFamily: 'Harmattan',
                                        fontSize: 21,
                                      letterSpacing: 1,
                                        color:
                                            Color(0xFFfafafa).withOpacity(0.7),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                      children: [
                                        
                                        Container(decoration: BoxDecoration(color: Color(0xff444444).withOpacity(0.2),borderRadius: BorderRadius.circular(10)),
                                          child: DropdownButton(
                                            padding: EdgeInsets.symmetric(vertical: 5,horizontal:4),
                                            
                                            elevation: 10,
                                            isDense: true,
                                            underline: SizedBox(),
                                            borderRadius: BorderRadius.circular(15),
                                            alignment: Alignment.center,
                                            style: TextStyle(
                                              fontFamily: 'Harmattan',
                                              fontSize: 18,
                                              
                                        
                                              
                                              color: Color(0xFFdadada)
                                                  .withOpacity(0.7),
                                            ),
                                           hint: Text("Select Lang",style: TextStyle(color: Color(0xFFdadada).withOpacity(0.7)), ),
                                            
                                            icon: Icon(Icons.keyboard_arrow_down_rounded,color: Color(0xFF344444),
                                                                              size: 25,),
                                                                              dropdownColor: Color(0xff262626),
                                                                              
                                            value: langValueChoose,
                                            items: langList.map((valueItem){return DropdownMenuItem(value: valueItem,alignment: Alignment.center,child: Text(valueItem));} ).toList(),
                                            onChanged: (newValue) {
                                              setState(() {
                                                langValueChoose = newValue as String;
                                              });
                                            },
                                            
                                        
                                            
                                          ),
                                        ),
                                        Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 10)),
                                      ],
                                    ),
                              ],
                            ),
                          ),
                         
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      // color: Color(0xff444444),
                      decoration: BoxDecoration(
                          color: Color(0xff444444).withOpacity(0.25),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Column(
                        children: [
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Container(
                                width: 3,
                                height: 22,
                                decoration: BoxDecoration(
                                    color: Color(0xff00ccff).withOpacity(0.7),
                                    borderRadius: BorderRadius.circular(15)),
                              ),
                              // Icon(Icons.)
                              Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 4)),
                              Text(
                                "Feedback",
                                style: TextStyle(
                                    fontFamily: 'Harmattan-Bold',
                                    fontSize: 22,
                                    
                                    color: Color(0xFFfafafa).withOpacity(0.7)),
                              )
                            ],
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 8,right: 8,bottom:8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 5),
                                  child: Row(
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 5)),
                                      Icon(
                                        Icons.bug_report_outlined,
                                        color: Color(0xFF333333),
                                        size: 20,
                                      ),
                                      Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 9)),
                                      Text(
                                        "Report a Bug",
                                        style: TextStyle(
                                          fontFamily: 'Harmattan',
                                          fontSize: 21,
                                          
                                          color: Color(0xFFfafafa)
                                              .withOpacity(0.7),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.arrow_forward_ios_rounded,
                                      color: Color(0xFF333333),
                                      size: 15,
                                    ),
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10)),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          
                          Divider(
                            thickness: 0.2,
                            color: Color(0xFF333333),
                            height: 0,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 5),
                                  child: Row(
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 5)),
                                      Icon(
                                        Icons.feedback_outlined,
                                        color: Color(0xFF333333),
                                        size: 20,
                                      ),
                                      Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 9)),
                                      Text(
                                        "Rate Us",
                                        style: TextStyle(
                                          fontFamily: 'Harmattan',
                                          fontSize: 21,
                                          
                                          color: Color(0xFFfafafa)
                                              .withOpacity(0.7),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.arrow_forward_ios_rounded,
                                      color: Color(0xFF333333),
                                      size: 15,
                                    ),
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10)),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          
                          
                         
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      // color: Color(0xff444444),
                      decoration: BoxDecoration(
                          color: Color(0xff444444).withOpacity(0.25),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Column(
                        children: [
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Container(
                                width: 3,
                                height: 22,
                                decoration: BoxDecoration(
                                    color: Color(0xff00ccff).withOpacity(0.7),
                                    borderRadius: BorderRadius.circular(15)),
                              ),
                              // Icon(Icons.)
                              Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 4)),
                              Text(
                                "More",
                                style: TextStyle(
                                    fontFamily: 'Harmattan-Bold',
                                    fontSize: 22,
                                    
                                    color: Color(0xFFfafafa).withOpacity(0.7)),
                              )
                            ],
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 8,right: 8,bottom:8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 5),
                                  child: Row(
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 5)),
                                      Icon(
                                        Icons.people_sharp,
                                        color: Color(0xFF333333),
                                        size: 20,
                                      ),
                                      Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 9)),
                                      Text(
                                        "Tell Your Friend",
                                        style: TextStyle(
                                          fontFamily: 'Harmattan',
                                          fontSize: 21,
                                          
                                          color: Color(0xFFfafafa)
                                              .withOpacity(0.7),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.arrow_forward_ios_rounded,
                                      color: Color(0xFF333333),
                                      size: 15,
                                    ),
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10)),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          
                          Divider(
                            thickness: 0.2,
                            color: Color(0xFF333333),
                            height: 0,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 5),
                                  child: Row(
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 5)),
                                      Icon(
                                        Icons.help_outline_outlined,
                                        color: Color(0xFF333333),
                                        size: 20,
                                      ),
                                      Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 9)),
                                      Text(
                                        "Help",
                                        style: TextStyle(
                                          fontFamily: 'Harmattan',
                                          fontSize: 21,
                                          
                                          color: Color(0xFFfafafa)
                                              .withOpacity(0.7),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.arrow_forward_ios_rounded,
                                      color: Color(0xFF333333),
                                      size: 15,
                                    ),
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10)),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          
                          Divider(
                            thickness: 0.2,
                            color: Color(0xFF333333),
                            height: 0,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 5),
                                  child: Row(
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 5)),
                                      Icon(
                                        Icons.info_outline,
                                        color: Color(0xFF333333),
                                        size: 20,
                                      ),
                                      Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 9)),
                                      Text(
                                        "About",
                                        style: TextStyle(
                                          fontFamily: 'Harmattan',
                                          fontSize: 21,
                                          
                                          color: Color(0xFFfafafa)
                                              .withOpacity(0.7),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.arrow_forward_ios_rounded,
                                      color: Color(0xFF333333),
                                      size: 15,
                                    ),
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10)),
                                  ],
                                ),
                              ],
                            ),
                          ),
                         
                        ],
                      ),
                    ),

                    
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
                            child: Row(
                              children: [
                                Icon(
                                  Icons.logout_outlined,
                                  color: Color(0xFFb80f0a).withOpacity(0.5),
                                  size: 15,
                                ),
                                Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 2)),
                                Text("Log Out",
                                    style: TextStyle(
                                        fontFamily: 'Sansation-Bold',
                                        fontSize: 14,
                                        letterSpacing: 1,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xFFb80f0a)
                                            .withOpacity(0.5))),
                              ],
                            ),
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
                                      builder: (context) => bookmarkScreen()));
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
