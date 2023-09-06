import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';
import 'package:newsviews/screens/otp.dart';

// import 'package:google_fonts/google_fonts.dart';
class settingsScreen extends StatefulWidget {
  const settingsScreen({super.key});

  @override
  State<settingsScreen> createState() => _settingsScreenState();
}

class _settingsScreenState extends State<settingsScreen> {
  static const keyLanguage = "key-Language";

  @override
  Widget build(BuildContext context) {
    Widget buildTellYourFriend() => SimpleSettingsTile(
          title: "Tell Your Friend",
          subtitle: '',
          leading: Icon(Icons.people_rounded),
        );
    Widget buildHelp() => SimpleSettingsTile(
          title: "Help",
          subtitle: '',
          leading: Icon(Icons.help),
        );
    Widget buildAbout() => SimpleSettingsTile(
          title: "About",
          subtitle: '',
          leading: Icon(Icons.info),
        );
    Widget buildReportABug() => SimpleSettingsTile(
          title: "Report A Bug",
          subtitle: '',
          leading: Icon(Icons.bug_report_outlined),
        );
    Widget buildSendFeedback() => SimpleSettingsTile(
          title: "Send Feedback",
          subtitle: '',
          leading: Icon(Icons.feedback_outlined),
        );

    Widget buildLanguage() => DropDownSettingsTile(
        title: "Language",
        leading: Icon(Icons.language_outlined),
        settingKey: keyLanguage,
        selected: 1,
        values: <int, String>{1: "Eng(Ind)", 2: "Hindi"});
    Widget buildFontSettings() => SimpleSettingsTile(
          title: "Font Settings",
          subtitle: '',
          leading: Icon(Icons.settings),
        );
    Widget buildNotifications() => SimpleSettingsTile(
          title: "Notifications",
          subtitle: '',
          leading: Icon(Icons.notifications_active_outlined),
        );
    Widget buildYourBookmarks() => SimpleSettingsTile(
          title: "Your Bookmarks",
          subtitle: '',
          leading: Icon(Icons.bookmark_added_outlined),
        );
    Widget buildQuickPreferenceBar() => SimpleSettingsTile(
          title: "Quick Preference Bar",
          subtitle: '',
          leading: Icon(Icons.remove_red_eye_outlined),
        );
    Widget buildEraseRelevanceHistory() => SimpleSettingsTile(
          title: "Erase Relevance History",
          subtitle: '',
          leading: Icon(Icons.cancel_outlined),
        );

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
                                  color: Color(0xFF00ccff)),
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
                    // SizedBox(height: 10),
                    ListView(
                      shrinkWrap: true,
                      padding: EdgeInsets.all(20),
                      children: [
                        SettingsGroup(
                            title: "Interest Configurations",
                            titleTextStyle: TextStyle(
                          fontFamily: 'Harmattan-Bold',
                          
                          fontSize: 20,
                          color: Color(0xFFfafafa)),
                            children: <Widget>[
                              buildYourBookmarks(),
                              buildQuickPreferenceBar(),
                              buildEraseRelevanceHistory()
                            ]),
                        const SizedBox(height: 10),
                        SettingsGroup(title: "Settings", children: <Widget>[
                          buildLanguage(),
                          buildFontSettings(),
                          buildNotifications()
                        ]),
                        const SizedBox(height: 10),
                        SettingsGroup(title: "Feedback", children: <Widget>[
                          buildReportABug(),
                          buildSendFeedback()
                        ]),
                        const SizedBox(height: 10),
                        SettingsGroup(title: "More", children: <Widget>[
                          buildTellYourFriend(),
                          buildHelp(),
                          buildAbout()
                        ]),
                      ],
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
                                      builder: (context) => otp()));
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
