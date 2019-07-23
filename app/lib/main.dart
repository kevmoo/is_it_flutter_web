import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Is is Flutter web?',
        home: DefaultTabController(
          length: _tabs.length,
          child: Scaffold(
            appBar: AppBar(
              title: Text('Is is Flutter web?'),
              bottom: TabBar(
                tabs: _tabs,
              ),
            ),
            body: TabBarView(
              children: _tabs.map((Tab tab) {
                final String label = tab.text.toLowerCase();
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

  final _tabs = const <Tab>[
    Tab(text: 'LEFT'),
    Tab(text: 'RIGHT'),
  ];
}
