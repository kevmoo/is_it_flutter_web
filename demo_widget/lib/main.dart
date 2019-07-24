import 'package:flutter/material.dart';

import 'demo_widget.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          body: const Directionality(
            textDirection: TextDirection.ltr,
            child: DemoWidget(),
          ),
        ),
      ),
    );
