import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tenawo/Dashboard.dart';
import 'package:tenawo/Payment.dart';
import 'package:tenawo/Profile.dart';



void main() => runApp(const CupertinoTabBarApp());

class CupertinoTabBarApp extends StatelessWidget {
  const CupertinoTabBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      home: CupertinoTabBarExample(),
    );
  }
}

class CupertinoTabBarExample extends StatelessWidget {
  const CupertinoTabBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        backgroundColor: Colors.blue,
        activeColor: Colors.white,
        height: 55,
        inactiveColor: Colors.white70,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon:
          SizedBox(height: 25,
              child: Icon(Icons.home,size: 28,)),label: 'Home'),

          BottomNavigationBarItem(icon:

          SizedBox(height: 25,
              child: Icon(Icons.payment,size: 28,)),label: 'Payments'),

          BottomNavigationBarItem(icon:

          SizedBox(height: 25,
              child: Icon(Icons.person,size: 28,)),label: 'Profile'),
        ],
      ),
      tabBuilder: (context, index){
        switch(index){
          case 0: return CupertinoTabView(builder: (context){
            return CupertinoPageScaffold(child: Dashboard());
          });

          case 1: return CupertinoTabView(builder: (context){
            return CupertinoPageScaffold(child: Payments());
          });

          case 2: return CupertinoTabView(builder: (context){
            return CupertinoPageScaffold(child: Profile());
          });
          default: return CupertinoTabView(builder: (context){
            return CupertinoPageScaffold(child: Dashboard());
          });
        }
      },
    );
  }
}
