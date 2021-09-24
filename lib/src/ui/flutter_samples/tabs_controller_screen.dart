import 'package:flutter/material.dart';

class TabControllerExample extends StatelessWidget {
  TabControllerExample({Key? key}) : super(key: key);

  static Widget create(BuildContext context) => TabControllerExample();

  final List<Tab> myTabs = <Tab>[
    Tab(text: '   1   '),
    Tab(text: '   2   '),
    Tab(text: '   3   '),
    Tab(text: '   4   '),
    Tab(text: '   5   '),
    Tab(text: '   6   '),
    Tab(text: '   7   '),
    Tab(text: '   8   '),
    Tab(text: '   9   '),
    Tab(text: '   10  '),
    Tab(text: '   11  '),
    Tab(text: '   12  '),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: myTabs.length,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              isScrollable: true,
              tabs: myTabs,
            ),
          ),
          body: TabBarView(
            children: myTabs.map((Tab tab) {
              final String label = tab.text!.toLowerCase();
              return Center(
                child: Text(
                  'This is the $label tab',
                  style: const TextStyle(fontSize: 36),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
