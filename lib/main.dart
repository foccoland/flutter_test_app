// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// You can read about packages here: https://flutter.io/using-packages/
import 'package:flutter/material.dart';
import 'package:flutter_test_app/category_route.dart';

// You can use a relative import, i.e. `import 'category.dart';` or
// a package import, as shown below.
// More details at http://dart-lang.github.io/linter/lints/avoid_relative_lib_imports.html

/// The function that is called when main.dart is run.
void main() {
  runApp(UnitConverterApp());
}

/// This widget is the root of our application.
/// Currently, we just show one widget in our app.
class UnitConverterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Unit Converter',
      home: Scaffold(
        backgroundColor: Colors.green[100],
        body: Center(
          child: CategoryRoute(),
        ),
      ),
    );
  }
}

class MagicButtonWidget extends StatefulWidget {
  @override
  _MagicButtonWidgetState createState() => _MagicButtonWidgetState();
}

class _MagicButtonWidgetState extends State<MagicButtonWidget> {
  bool pressed = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          ElevatedButton(
              onPressed: _toggleMagic,
              child: Text(pressed ? "Magic!" : "No magic."),
              style: ElevatedButton.styleFrom(
                  primary: pressed ? Colors.red : Colors.blueGrey)),
          Icon(pressed ? Icons.ac_unit : Icons.access_alarm),
        ],
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      ),
    );
  }

  void _toggleMagic() {
    setState(() {
      pressed ? pressed = false : pressed = true;
    });
  }
}