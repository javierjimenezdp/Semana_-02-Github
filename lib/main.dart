import 'package:flutter/material.dart';

import 'home.dart';

void main() {runApp(
    MaterialApp(
      title: "Pestaña con Flutter",
      home: Home(),
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.green,
        accentColor: Colors.purple,
      ),
    )
);
}
