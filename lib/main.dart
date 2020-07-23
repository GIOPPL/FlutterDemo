import 'package:flutter/material.dart';
import 'package:flutter_app2/demo/listview_demo.dart';

import 'demo/bottom_navigation_bar_demo.dart';
import 'demo/drawer_dart.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
          primarySwatch: Colors.yellow,
          highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
          splashColor: Colors.redAccent),
    );
  }
}

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
        length: 3,
        child: Scaffold(
          drawer: DrawDemo(),
          backgroundColor: Colors.grey[100],
          appBar: AppBar(
            title: Text('你好'),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                tooltip: 'Search',
                onPressed: () => debugPrint('Navigation button pressed'),
              ),
            ],
            elevation: 10.0,
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.local_florist),
                ),
                Tab(
                  icon: Icon(Icons.change_history),
                ),
                Tab(
                  icon: Icon(Icons.directions_bike),
                )
              ],
              unselectedLabelColor: Colors.black38,
              indicatorColor: Colors.black54,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 1,
            ),
          ),
          body: TabBarView(children: <Widget>[
            ListViewDemo(),
            Icon(
              Icons.local_florist,
              size: 128.0,
              color: Colors.black12,
            ),
            Icon(
              Icons.local_florist,
              size: 128.0,
              color: Colors.black12,
            ),
          ]),
          bottomNavigationBar: BottomNavigationBarDemo(),
        ));
  }

}
