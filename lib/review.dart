import 'package:flutter/material.dart';

class Review extends StatelessWidget {

  String pathImg = 'assets/img/review_photo.jpg';
  String name;
  int punctuation;
  int reviews;
  String comment;
  int photos;

  Review(this.pathImg, this.name, this.reviews, this.photos, this.punctuation, this.comment);

  @override
  Widget build(BuildContext context) {

    final userComment = Container(
      margin: EdgeInsets.only(
        left: 20.0,
        right: 20.0,
      ),
      child: Text(
        comment,
        style: TextStyle(
          fontFamily: 'Lato',
          fontSize: 14.0,
          fontWeight: FontWeight.w900,
        ),
      ),
    );

    final userInfo= Container(
      margin: EdgeInsets.only(
        left: 20.0,
        right: 20.0,
      ),
      child: Text(
        reviews.toString() + ' review · ' + photos.toString() + ' photos',
        style: TextStyle(
          fontFamily: 'Lato',
          fontSize: 13.0,
          color: Color(0xFFa3a5a7),
        ),
      ),
    );

    final userName = Container(
      margin: EdgeInsets.only(
        left: 20.0,
        right: 20.0,
      ),
      child: Text(
        name,
        style: TextStyle(
          fontFamily: 'Lato',
          fontSize: 18.0,
        ),
      ),
    );

    final userDetails = Flexible(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            userName,
            userInfo,
            userComment,
          ],
        ),
      ),
    );

    final photo = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0,
      ),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(image: AssetImage(pathImg), fit: BoxFit.cover)
      ),
    );
    // TODO: Correct the image positioning
    return Row(
      children: <Widget>[
        photo,
        userDetails,
      ],
    );
  }

}