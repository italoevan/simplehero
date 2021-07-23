import 'package:animation_hero/details.dart';
import 'package:animation_hero/hero_model.dart';
import 'package:flutter/material.dart';

class HeroItem extends StatelessWidget {
  final HeroModel _model;

  HeroItem(this._model);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Details(_model.image, _model.uniqueId)));
      },
      child: SizedBox(
        width: 50,
        child: Card(
          child: Container(
            margin: EdgeInsets.all(10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Hero(
                    tag: _model.uniqueId,
                    child: Image.asset(
                      _model.image,
                      width: 50,
                      height: 50,
                    )),
                Text(_model.name)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
