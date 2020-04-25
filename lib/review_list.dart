import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:primerapp/review.dart';

class ReviewList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review(),
        Review(),
        Review()
      ],
    );
  }

}