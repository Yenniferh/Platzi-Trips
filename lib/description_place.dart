import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget {
  // ignore: non_constant_identifier_names
  String dummyText = 'Intelligentsia hammock before they sold out, distillery in velit trust fund blue bottle salvia et meditation. '
      'Sriracha typewriter culpa glossier, franzen laboris readymade slow-carb minim. Pabst artisan helvetica bushwick. ';

  @override
  Widget build(BuildContext context) {

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
            'Duwili Ella',
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
            star,
            star,
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
      child: new Text( dummyText,
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