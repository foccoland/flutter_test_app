// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_test_app/category.dart';

// TODO: Check if we need to import anything

// TODO: Define any constants

/// Category Route (screen).
///
/// This is the 'home' screen of the Unit Converter. It shows a header and
/// a list of [Categories].
///
/// While it is named CategoryRoute, a more apt name would be CategoryScreen,
/// because it is responsible for the UI at the route's destination.
class CategoryRoute extends StatelessWidget {
  const CategoryRoute();

  static const _categoryNames = <String>[
    'Length',
    'Area',
    'Volume',
    'Mass',
    'Time',
    'Digital Storage',
    'Energy',
    'Currency',
  ];

  static const _baseColors = <ColorSwatch>[
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.red,
  ];

  List<Category> getCategories() {
    List<Category> _categories = <Category>[];
    _categoryNames.asMap().forEach((index, categoryName) {
      _categories.add(
          Category(
              key: Key(categoryName),
              name: categoryName,
              color: _baseColors[index],
              iconLocation: Icons.cake,
          )
      );
    });
    return _categories;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: Create a list of the eight Categories, using the names and colors
    // from above. Use a placeholder icon, such as `Icons.cake` for each
    // Category. We'll add custom icons later.

    final _categories = getCategories();

    // TODO: Create a list view of the Categories
    final listView = ListView(
      children: _categories,
    );

    // TODO: Create an App Bar
    final appBar = AppBar(
      title: Text("Widgets!"),
    );

    return Scaffold(
      appBar: appBar,
      body: listView,
    );
  }
}
