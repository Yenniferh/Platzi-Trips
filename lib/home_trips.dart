import 'package:flutter/material.dart';
import 'package:platzi_trips/description_place.dart';
import 'package:platzi_trips/header_appbar.dart';
import 'package:platzi_trips/review_list.dart';

class HomeTrips extends StatelessWidget{

  // This widget is the root of your application.
  String dummyText = 'Intelligentsia hammock before they sold out, distillery in velit trust fund blue bottle salvia et meditation. '
      'Sriracha typewriter culpa glossier, franzen laboris readymade slow-carb minim. Pabst artisan helvetica bushwick. ';

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            DescriptionPlace('Santa Marta', 4, dummyText),
            ReviewList()
          ],
        ),
        HeaderAppBar()
      ],
    );
  }
}