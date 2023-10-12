import 'package:flutter/material.dart';

class TabView extends StatefulWidget {
  const TabView({super.key});

  @override
  State<TabView> createState() => _TabViewState();
}

class _TabViewState extends State<TabView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('T A B  B A R'),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
        ),
        body: Column(
          children: [
            TabBar(tabs: [
              Tab(
                icon: Icon(Icons.home, color: Colors.deepPurple),
              ), //1ST
              Tab(
                icon: Icon(Icons.person, color: Colors.deepPurple),
              ), //2ND
              Tab(
                icon: Icon(Icons.settings, color: Colors.deepPurple),
              ), //3RD
            ]),


            Expanded(
              child: TabBarView(children: [
                Container(child: Center(child: Text("1ST TAB"))), //1ST TAB
                Container(child: Center(child: Text("2ND TAB"))), //2ND TAB
                Container(child: Center(child: Text("3RD TAB")))  //3RD TAB
              ]),
            )
          ],
        ),
      ),
    );
  }
}
