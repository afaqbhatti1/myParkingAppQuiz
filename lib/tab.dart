import 'package:flutter/material.dart';

class Tabbar extends StatefulWidget {
  const Tabbar({super.key});

  @override
  State<Tabbar> createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            bottom: TabBar(
                unselectedLabelColor: Colors.redAccent,
                indicatorSize: TabBarIndicatorSize.label,
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.redAccent),
                tabs: [
                  Tab(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border:
                              Border.all(color: Colors.redAccent, width: 1)),
                      child: const Align(
                        alignment: Alignment.center,
                        child: Text("APPS"),
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border:
                              Border.all(color: Colors.redAccent, width: 1)),
                      child: const Align(
                        alignment: Alignment.center,
                        child: Text("MOVIES"),
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border:
                              Border.all(color: Colors.redAccent, width: 1)),
                      child: const Align(
                        alignment: Alignment.center,
                        child: Text("GAMES"),
                      ),
                    ),
                  ),
                ]),
          ),
          body: const TabBarView(children: [
            Icon(Icons.apps),
            Icon(Icons.movie),
            Icon(Icons.games),
          ]),
        ));
  }
}
