import 'package:flutter/material.dart';
import 'package:primerapp/description_place.dart';
import 'package:primerapp/review_list.dart';
import 'header_appbar.dart';

class HomeTrips extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    String descriptionDummy = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam iaculis sem quis est luctus, in dapibus metus ullamcorper. Aliquam iaculis sem quis est luctus, in dapibus metus ullamcorper.  consectetur adipiscing elit. Aliquam iaculis sem quis est luctus.";

    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            DescriptionPlace("Duwili Ella", 4, descriptionDummy),
            ReviewList()
          ],
        ),
        HeaderAppBar()
      ],
    );
  }

}