import 'package:flutter/material.dart';
import 'package:flutter_appewejrfbe/ui/screens/profile_settings.dart';
import 'package:flutter_appewejrfbe/ui/styles/spacing.dart';
import 'package:flutter_appewejrfbe/ui/styles/styles.dart';
import 'package:flutter_appewejrfbe/ui/widgets/custom_text_widget.dart';
import 'package:flutter_appewejrfbe/ui/widgets/custom_textfield.dart';
import 'package:flutter_appewejrfbe/ui/widgets/profile1.dart';
import 'package:flutter_appewejrfbe/ui/widgets/profile2.dart';
import 'package:flutter_appewejrfbe/ui/widgets/size_calculator.dart';

class AccountScreen extends StatefulWidget {
  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  bool enableDarkMode = false;
  bool enableFingerPrint = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        children: [
          Container(
            height: screenHeight(context) / 4,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Styles.appCanvasGreen,
                      Styles.appCanvasGreenDark
                    ])),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SafeArea(
                  bottom: false,
                  child: Container(
                    child: Icon(
                      Icons.camera_alt,
                      color: Colors.white24,
                      size: 30,
                    ),
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Styles.appCanvasGreenDark,
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.white60, width: 1.2)),
                    height: screenAwareSize(85, context),
                    width: screenAwareSize(85, context),
                  ),
                ),
                verticalSpaceSmall,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomText('@Tolulope Adeleye',
                        fontSize: 16,
                        color: Styles.colorWhite,
                        rightMargin: 10,
                        fontWeight: FontWeight.w700),
                    Icon(
                      Icons.edit,
                      size: 20,
                      color: Styles.colorWhite,
                    )
                  ],
                ),
                CustomText('tolulope@pettysave.com',
                    fontSize: 12,
                    topMargin: 10,
                    color: Styles.colorWhite,
                    fontWeight: FontWeight.w400),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: ListView(
              padding: EdgeInsets.zero,
              physics: ClampingScrollPhysics(),
              shrinkWrap: true,
              children: [
                CustomText(
                  'PROFILE',
                  fontSize: 14,
                  color: Styles.appCanvasGreen,
                  fontWeight: FontWeight.w400,
                ),
                GestureDetector(
                    onTap: () => routeTo(context, ProfileSettings()),
                    child: Profile1(
                        text2: 'My Profile Settings', icon: Icons.person_pin)),
                Profile1(text2: 'My Cards and Banks', icon: Icons.credit_card),
                Profile1(text2: 'Add BVN', icon: Icons.code),
                Profile1(text2: 'Refer and Earn', icon: Icons.card_giftcard),
                CustomText('Account Number (WEMA BANK)',
                    fontSize: 10,
                    topMargin: 20,
                    bottomMargin: 10,
                    color: Styles.colorGrey,
                    fontWeight: FontWeight.w400),
                CustomTextField(
                  suffixIcon: Icon(
                    Icons.copy,
                    size: 20,
                    color: Styles.appCanvasGreen,
                  ),
                ),
                verticalSpaceMedium,
                Container(
                  width: MediaQuery.of(context).size.width * .5,
                  child: CustomTextField(
                    hintText: 'Create a username',
                  ),
                ),
                Profile2(text2: 'Enable Dark Mode', enabled: enableDarkMode),
                Profile2(
                    text2: 'Enable Finger print/Face ID',
                    enabled: enableFingerPrint),
                Divider(thickness: 1),
                verticalSpaceMedium,
                CustomText('MORE INFO',
                    fontSize: 14,
                    color: Styles.appCanvasGreen,
                    fontWeight: FontWeight.w400),
                Profile1(text2: 'Chat with Us', icon: Icons.message),
                Profile1(text2: 'About Jetseed', icon: Icons.info),
                Profile1(text2: 'Rate App', icon: Icons.star),
                Profile1(text2: 'Log Out', icon: Icons.logout, isLogout: true),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
