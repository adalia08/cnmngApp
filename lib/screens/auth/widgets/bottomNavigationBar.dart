import 'package:cnmngroup/screens/auth/widgets/profile.dart';
import 'package:flutter/material.dart';
import 'package:cnmngroup/screens/auth/widgets/explore.dart';
import 'package:cnmngroup/screens/auth/widgets/browse.dart';

class Nav extends StatefulWidget {
  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    Browse(),
    Explore(),
    ProfileScreen(),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.lightGreen,
            ),
            title: Text(
              'My Feed',
              style: TextStyle( color: Colors.blueGrey),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.lightGreen,
            ),
            title: Text(
              'Explore',
              style: TextStyle( color: Colors.blueGrey),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.lightGreen,
            ),
            title: Text(
              'Profile',
                style: TextStyle( color: Colors.blueGrey),
            ),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
        selectedFontSize: 13.0,
        unselectedFontSize: 13.0,
      ),
    );
  }
}