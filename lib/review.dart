import 'package:flutter/material.dart';
import 'package:platzi_trips/review_list.dart';

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

    final stars = Container(
        margin: EdgeInsets.only(left: 10.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(Icons.star, size: 15.0 ,color: Color(0xfff2c611)),
            Icon(Icons.star, size: 15.0 ,color: Color(0xfff2c611)),
            Icon(Icons.star, size: 15.0 ,color: Color(0xfff2c611)),
            Icon(Icons.star, size: 15.0 ,color: Color(0xfff2c611)),
            Icon(Icons.star, size: 15.0 ,color: Color(0xfff2c611)),

          ],
        )
    );

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
      child: Row(
        children: <Widget>[
          Text(
            reviews.toString() + ' review · ' + photos.toString() + ' photos',
            style: TextStyle(
              fontFamily: 'Lato',
              fontSize: 13.0,
              color: Color(0xFFa3a5a7),
            ),
          ),
          stars
        ],
      )
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
          top: 5.0,
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
    return Container(
      margin: EdgeInsets.only(bottom: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          photo,
          userDetails,
        ],
      ),
    );
  }

}