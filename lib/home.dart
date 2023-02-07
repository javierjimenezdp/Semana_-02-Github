import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'tabs/display.dart';

class Home extends StatefulWidget {
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pestañas con Flutter"),
        bottom: getTabBar(),
      ),
      body: getTabBarView(<Widget>[
        DisplayWidger('assets/imagen_#01.png'),
        DisplayWidger('assets/imagen_#02.png'),
        DisplayWidger('assets/imagen_#03.png'),
      ]),
    );
  }

  TabBar getTabBar() {
    return TabBar(
      tabs: <Tab>[
        Tab(icon: Icon(Icons.looks_one)),
        Tab(icon: Icon(Icons.looks_two)),
        Tab(icon: Icon(Icons.looks_3)),
      ],
      controller: _controller,
    );
  }

  TabBarView getTabBarView(var displays) {
    return TabBarView(
      children: displays,
      controller: _controller,
    );
  }
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<TabController>('_controller', _controller));
  }
}