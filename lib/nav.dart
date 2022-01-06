import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:siakadu/screens/adminchat.dart';
import 'package:siakadu/screens/homepage.dart';
import 'package:siakadu/screens/profile.dart';


class Nav extends StatefulWidget {
  const Nav({Key? key}) : super(key: key);

  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    Homepage(),
    AdminChat(),
    Profile(),
  ];

  void _onItemTap(int index){
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
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('Home')
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.chat),
                title: Text('Admin')
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                title: Text('Profile')
            ),
          ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
      ),
    );
  }
}
