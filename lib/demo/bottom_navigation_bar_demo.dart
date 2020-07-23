import 'package:flutter/material.dart';

class BottomNavigationBarDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BottomNavigationBarState();
  }
}

class _BottomNavigationBarState extends State {
  int _currentIndex = 0;

  void _onTapHandler(int value) {
    setState(() {
      _currentIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: _onTapHandler,
      type: BottomNavigationBarType.fixed,
      fixedColor: Colors.deepPurpleAccent,
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.explore), title: Text('EXPLORE')),
        BottomNavigationBarItem(
            icon: Icon(Icons.history), title: Text('HISTORY')),
        BottomNavigationBarItem(icon: Icon(Icons.list), title: Text('LIST')),
        BottomNavigationBarItem(
            icon: Icon(Icons.person), title: Text('PERSON')),
      ],
    );
  }
}
