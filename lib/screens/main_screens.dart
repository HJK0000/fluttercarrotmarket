import 'package:carrotmarket/screens/home/home_screen.dart';
import 'package:carrotmarket/screens/neighborhood_life/neighiborhood_life_screen.dart';
import 'package:carrotmarket/screens/near_me/near_me_screen.dart';
import 'package:carrotmarket/screens/chatting/chatting_screen.dart';
import 'package:carrotmarket/screens/my_carrot/my_carrot_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MainScreens extends StatefulWidget {
  @override
  State<MainScreens> createState() => _MainScreensState();
}

class _MainScreensState extends State<MainScreens> {
  // 1
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    // ❷
    return Scaffold(
      // ❸
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          HomeScreen(),
          NeighiborhoodLifeScreen(),
          NearMeScreen(),
          ChattingScreen(),
          MyCarrotScreen()
        ],
      ),
      // ❹
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          const BottomNavigationBarItem(
              label: '홈',
              icon: Icon(
                CupertinoIcons.home,
              )),
          const BottomNavigationBarItem(
              label: '동네생활',
              icon: Icon(
                CupertinoIcons.square_on_square,
              )),
          const BottomNavigationBarItem(
              label: '내 근처',
              icon: Icon(
                CupertinoIcons.placemark,
              )),
          const BottomNavigationBarItem(
              label: '채팅',
              icon: Icon(
                CupertinoIcons.chat_bubble_2,
              )),
          const BottomNavigationBarItem(
              label: '나의 당근',
              icon: Icon(
                CupertinoIcons.person,
              )),
        ],
      ),
    );
  }
}
