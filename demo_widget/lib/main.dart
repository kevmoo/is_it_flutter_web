import 'package:flutter/material.dart';

import 'demo_widget.dart';

void main() => runApp(
      Material(
        child: const Directionality(
          textDirection: TextDirection.ltr,
          child: DemoWidget(),
        ),
      ),
    );
