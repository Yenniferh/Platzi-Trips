import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FloatingActionButtonGreen();
  }
}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen> {

  bool isFav = false;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: "Fav",
      onPressed: onPressedFav,
      child: Icon(
        isFav? Icons.favorite : Icons.favorite_border,
        color: Colors.white,
      ),
    );
  }

  void onPressedFav() {
    setState(() {
      isFav = !isFav;
    });
    Scaffold.of(context).showSnackBar(SnackBar(
      content: isFav? Text("Añadido a tus favoritos") : Text("Eliminado de tus favoritos"),
      duration: Duration(seconds: 3),
    ));
  }
}
