import 'package:flutter/material.dart';
import 'description_place.dart';
//import 'review.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  String dummyText = 'Intelligentsia hammock before they sold out, distillery in velit trust fund blue bottle salvia et meditation. '
      'Sriracha typewriter culpa glossier, franzen laboris readymade slow-carb minim. Pabst artisan helvetica bushwick. ';

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Platzi Trips'),
        ),
        body: new DescriptionPlace('Santa Marta', 4, dummyText),
        //body: Review('assets/img/review_photo.jpg', 'Yennifer Herrera', 5, 3, 4, 'Este lugar es increíble. No hay manera de no amarlo'),
      )
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
