import 'package:flutter/material.dart';
import 'package:platzi_trips/review.dart';

class ReviewList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review('assets/img/review_photo.jpg', 'Yennifer Herrera', 5, 3, 4, 'Este lugar es increíble. No hay manera de no amarlo. No me canso de visitar el lugar. Estuvimos durante 3 días mi esposo y yo'),
        Review('assets/img/review_photo.jpg', 'Rosalía', 5, 2, 5, 'Magnífico'),
        Review('assets/img/review_photo.jpg', 'Yennifer Herrera', 5, 3, 4, 'Este lugar es increíble. No hay manera de no amarlo. No me canso de visitar el lugar. Estuvimos durante 3 días mi esposo y yo'),
        Review('assets/img/review_photo.jpg', 'Rosalía', 5, 2, 5, 'Magnífico')
      ]
    );
  }

}