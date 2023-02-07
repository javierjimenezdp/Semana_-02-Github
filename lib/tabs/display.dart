import 'dart:html';

import 'package:flutter/material.dart';

class DisplayWidger extends StatelessWidget {
  final Image;
  DisplayWidger(this.Image);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Image.assets(img),
      ),
    );
  }
}
