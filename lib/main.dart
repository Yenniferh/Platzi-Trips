import 'package:flutter/material.dart';
import 'package:platzi_trips/review_list.dart';
import 'description_place.dart';
import 'gradient_back.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  String dummyText = 'Intelligentsia hammock before they sold out, distillery in velit trust fund blue bottle salvia et meditation. '
      'Sriracha typewriter culpa glossier, franzen laboris readymade slow-carb minim. Pabst artisan helvetica bushwick. ';

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.light
    ));

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            ListView(
              children: <Widget>[
                DescriptionPlace('Santa Marta', 4, dummyText),
                ReviewList()
              ],
            ),
            GradientBack("Popular"),
          ],
        ),
      )
    );
  }
}
