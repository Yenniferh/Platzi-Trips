import 'package:flutter/material.dart';
import 'package:platzi_trips/description_place.dart';
import 'package:platzi_trips/header_appbar.dart';
import 'package:platzi_trips/review_list.dart';

class HomeTrips extends StatelessWidget {
  // This widget is the root of your application.
  String dummyText =
      'Playa brisa y mar en un mismo lugar, Santa Marta. Una ciudad que cautiva. '
      'Posee una amplia variedad de actividades para todos los gustos. Descubre sus playas, '
      'la Sierra Nevada, la arquitectura colonial y mucho más. ¿Qué esperas para venir?';

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            SizedBox(
              height: 20.0,
            ),
            DescriptionPlace('Santa Marta', 4, dummyText),
            ReviewList()
          ],
        ),
        HeaderAppBar()
      ],
    );
  }
}
