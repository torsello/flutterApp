import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  String pathImage = "assets/img/people.jpeg";
  String name = "Matias Torsello";
  String details = "1 review 5 photos"; //al lado de esto
  String comment = "Alta aplicación premoldeados";

  //Review(this.pathImage, this.name, this.details, this.comment);
  Review();
  @override
  Widget build(BuildContext context) {
    final star_border = Container(
      margin: EdgeInsets.only(right: 3.0),
      child: Icon(Icons.star_border, color: Color(0xFFF2C611), size: 15.0),
    );

    final star_half = Container(
      margin: EdgeInsets.only(right: 3.0),
      child: Icon(Icons.star_half, color: Color(0xFFF2C611), size: 15.0),
    );

    final star = Container(
      margin: EdgeInsets.only(right: 0.5),
      child: Icon(Icons.star, color: Color(0xFFF2C611), size: 15.0),
    );

    final userComment = Container(
        margin: EdgeInsets.only(
          left: 20.0,
        ),
        child: Text(
          comment,
          textAlign: TextAlign.left,
          style: TextStyle(
              fontFamily: "Lato", fontSize: 13.0, fontWeight: FontWeight.w900),
        ));

    final userInfo = Container(
        margin: EdgeInsets.only(
          left: 20.0,
        ),
        child: Row(
          children: <Widget>[
            Text(
              details,
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontFamily: "Lato", fontSize: 13.0, color: Color(0xFFA3A5A7)),
            ),
            Container(
              padding: EdgeInsets.only(left: 10.0),
              child: Row(
                children: <Widget>[star, star, star, star, star_border],
              ),
            ),
          ],
        ));

    final userName = Container(
      margin: EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(fontFamily: "Lato", fontSize: 17.0),
      ),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[userName, userInfo, userComment],
    );

    final photo = Container(
      margin: EdgeInsets.only(top: 20.0, left: 20.0),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage))),
    );

    return Row(
      children: <Widget>[photo, userDetails],
    );
  }
}
