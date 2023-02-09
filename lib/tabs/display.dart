
import 'package:flutter/material.dart';

class DisplayWidger extends StatelessWidget {
  String image;
  DisplayWidger(this.image);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Image.asset(image)
      ),
    );
  }
}
