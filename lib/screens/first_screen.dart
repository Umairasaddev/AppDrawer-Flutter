import 'package:flutter/material.dart';

class first_class extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const Material(
      color: Colors.amber,
      child: Center(
        child: Text(
          "Hello Umair",
          textDirection: TextDirection.ltr,
          style: TextStyle(fontSize: 25.0),
        ),
      ),
    );
  }
}
