import 'package:assignment_4/pages/tab_one.dart';
import 'package:assignment_4/pages/tab_two.dart';
import 'package:flutter/material.dart';

class MyAdds extends StatelessWidget {
  TabBar get _tabBar => TabBar(
    tabs: [
      Tab(text: "My Adds",icon: Icon(Icons.shopping_bag_outlined)),
      Tab(text: "My Favourite",icon: Icon(Icons.favorite)),
    ],
  );
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text('AppBar'),
          bottom: PreferredSize(
            preferredSize: _tabBar.preferredSize,
            child: ColoredBox(
              color: Colors.amber,
              child: _tabBar,
            ),
          ),
        ),
        body: TabBarView(
          children: [
            TabOne(),
            TabTwo(),
          ],
        ),
      ),
    );
  }}