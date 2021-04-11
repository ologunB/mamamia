import 'package:flutter/material.dart';
import 'package:flutter_appewejrfbe/ui/screens/personal.dart';
import 'package:flutter_appewejrfbe/ui/screens/security.dart';
import 'package:flutter_appewejrfbe/ui/styles/styles.dart';
import 'package:flutter_appewejrfbe/ui/widgets/custom_text_widget.dart';
import 'package:google_fonts/google_fonts.dart';

import 'next_of_kin.dart';

class ProfileSettings extends StatefulWidget {
  @override
  _ProfileSettingsState createState() => _ProfileSettingsState();
}

class _ProfileSettingsState extends State<ProfileSettings> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Styles.colorWhite,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Color(0xffF8F9FC),
          leading: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Styles.colorGrey.withOpacity(.2)),
                    child: Icon(
                      Icons.keyboard_backspace,
                      color: Styles.appCanvasGreen,
                    )),
              ),
            ],
          ),
          elevation: 1.0,
          bottom: TabBar(
              labelColor: Styles.appCanvasGreen,
              unselectedLabelColor: Colors.grey[500],
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: Styles.appCanvasGreenDark,
              indicatorWeight: 3,
              labelStyle: GoogleFonts.nunito(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Styles.appCanvasGreen,
              ),
              unselectedLabelStyle: GoogleFonts.nunito(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Styles.colorGrey,
              ),
              tabs: [
                Tab(text: 'PERSONAL'),
                Tab(text: 'NEXT OF KIN'),
                Tab(text: 'SECURITY')
              ]),
          title: CustomText("My Profile Settings",
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w700),
          centerTitle: false,
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: TabBarView(
              children: [PersonalScreen(), NextOfKin(), SecurityScreen()]),
        ),
      ),
    );
  }
}
