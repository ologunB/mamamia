import 'package:flutter/material.dart';
import 'package:flutter_appewejrfbe/ui/styles/styles.dart';

import 'account_screen.dart';
import 'home_screen.dart';

class MainLayoutScreen extends StatefulWidget {
  const MainLayoutScreen({Key key}) : super(key: key);

  @override
  _MainLayoutScreenState createState() => _MainLayoutScreenState();
}

class _MainLayoutScreenState extends State<MainLayoutScreen> {
  int pageSelectedIndex = 0;

  final List<Widget> pages = <Widget>[
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    AccountScreen(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.colorPurple,
      body: PageStorage(child: pages[pageSelectedIndex], bucket: bucket),
      bottomNavigationBar: BottomNavigationBar(
          elevation: 30,
          onTap: (int i) {
            setState(() {
              pageSelectedIndex = i;
            });
          },
          currentIndex: pageSelectedIndex,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                backgroundColor: Styles.colorGrey,
                icon: const ImageIcon(
                  AssetImage('images/home-active.png'),
                ),
                label: 'Home',
                activeIcon: ImageIcon(
                  const AssetImage('images/home-active.png'),
                )),
            BottomNavigationBarItem(
              icon: const ImageIcon(
                AssetImage(
                  'images/save-inactive.png',
                ),
              ),
              label: 'Save',
              activeIcon: ImageIcon(
                const AssetImage('images/save-inactive.png'),
              ),
            ),
            BottomNavigationBarItem(
                icon: const ImageIcon(
                  AssetImage('images/invest-inactive.png'),
                ),
                label: 'Invest',
                activeIcon: ImageIcon(
                  const AssetImage('images/invest-inactive.png'),
                )),
            BottomNavigationBarItem(
                icon: const ImageIcon(
                  AssetImage('images/wallet-inactive.png'),
                ),
                label: 'Wallet',
                activeIcon: ImageIcon(
                  const AssetImage('images/wallet-inactive.png'),
                )),
          ]),
    );
  }
}
