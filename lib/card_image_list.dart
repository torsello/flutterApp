import 'package:flutter/material.dart';
import 'card_image.dart';

class CardImageList extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImage("assets/img/mountain.jpg"),
          CardImage("assets/img/mountain2.jpg"),
          CardImage("assets/img/beach.jpg"),
          CardImage("assets/img/beach2.jpg"),
          CardImage("assets/img/rio.jpg"),
          CardImage("assets/img/sunset.jpg")
        ],
      ),
    );
  }

}