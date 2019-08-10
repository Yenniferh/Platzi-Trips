import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget {
  // ignore: non_constant_identifier_names

  String namePlace;
  int stars;
  String descriptionPlace;

  DescriptionPlace(this.namePlace,this.stars,this.descriptionPlace);

  @override
  Widget build(BuildContext context) {

    final star_border = Container(
      margin: EdgeInsets.only(
        top: 320.0,
        right: 3.0,
      ),
      child: Icon(Icons.star_border, color: Color(0xfff2c611),),
    );

    final star_half= Container(
      margin: EdgeInsets.only(
        top: 320.0,
        right: 3.0,
      ),
      child: Icon(Icons.star_half, color: Color(0xfff2c611),),
    );

    final star = Container(
      margin: EdgeInsets.only(
        top: 320.0,
        right: 3.0,
      ),
      child: Icon(Icons.star, color: Color(0xfff2c611),),
    );

    final title_stars = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 320.0,
            left: 20.0,
            right: 20.0,
          ),
          child: Text(
            namePlace,
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w900,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: <Widget>[
            star,
            star,
            star,
            star_half,
            star_border,
          ],
        )
      ],
    );

    final description_text = Container(
      margin: EdgeInsets.only(
        top: 10.0,
        right: 20.0,
        left: 20.0,
      ),
      child: new Text( descriptionPlace,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.w300,
          color: Color(0xff56575a),
        ),
      ),
    );

    return Column(
      children: <Widget>[
        title_stars,
        description_text
      ],
    );
  }

}