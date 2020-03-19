import 'package:flutter/material.dart';
import 'package:platzi_trips/review.dart';

class ReviewList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review('assets/img/Yenn.jpg', 'Yenn', 5, 3, 4, 'Este lugar es increíble. No hay manera de no amarlo. No me canso de visitar el lugar.'),
        Review('assets/img/review_photo.jpg', 'Rosalía', 5, 2, 5, 'Magnífico'),
        Review('assets/img/review_photo.jpg', 'Yennifer Herrera', 5, 3, 4, 'Simplemente hermoso. Las personas de este lugar son muy amables'),
        Review('assets/img/review_photo.jpg', 'Rosalía Mendoza', 5, 2, 5, 'Magnífico')
      ]
    );
  }

}