import 'package:animation_hero/hero_item.dart';
import 'package:animation_hero/hero_model.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<HeroModel> list;

  @override
  void initState() {
    createCustomImageQuantity();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Heros'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: list.length,
            itemBuilder: (context, index) => Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    HeroItem(list[index]),
                    Center(child: Text((index + 1).toString()))
                  ],
                )),
      ),
    );
  }

  createCustomImageQuantity() {
    if (list == null) list = [];

    for (int i = 0; i < 100; i++) {
      HeroModel hero = new HeroModel("Hero", "assets/photo.jpg");

      list.add(hero);
    }
  }
}
