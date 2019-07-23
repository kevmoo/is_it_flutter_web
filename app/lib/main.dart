import 'package:demo_widget/component.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Is is Flutter web?',
        home: DefaultTabController(
          length: _tabs.length,
          child: Scaffold(
            appBar: AppBar(
              title: const Text('Is is Flutter web?'),
              bottom: TabBar(
                tabs: _tabs,
              ),
            ),
            body: TabBarView(
              children: const [
                DemoWidget(),
                WebView(
                  initialUrl: 'https://flutter.github.io/samples/',
                ),
              ],
            ),
          ),
        ),
      );

  final _tabs = const <Tab>[
    Tab(text: 'Native'),
    Tab(text: 'Web'),
  ];
}
