import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  final String image;
  final String uniqueId;

  Details(this.image, this.uniqueId);

  @override
  Widget build(BuildContext context) {
    print(uniqueId);
    return Scaffold(
      body: Center(
        child: Hero(tag: uniqueId, child: Image.asset(image)),
      ),
    );
  }
}
