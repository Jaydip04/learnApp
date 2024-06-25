import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Flutter_Rating_Bar_Widget extends StatefulWidget {
  const Flutter_Rating_Bar_Widget({super.key});

  @override
  State<Flutter_Rating_Bar_Widget> createState() => _Flutter_Rating_Bar_WidgetState();
}

class _Flutter_Rating_Bar_WidgetState extends State<Flutter_Rating_Bar_Widget> {
  @override
  Widget build(BuildContext context) {
    var _saveRating = null;
    return Scaffold(
      body: Center(
        child: RatingBar(
          minRating: 1,
          // itemCount: 8,
          glowColor: Colors.lightGreen,
          glowRadius: 5,
          updateOnDrag: true,
          // tapOnlyMode: true,
          // ignoreGestures: true,
          maxRating: 5,
          // direction: Axis.vertical,
          itemPadding: EdgeInsets .symmetric(horizontal: 4.0),
          initialRating: 3,
          allowHalfRating: true,
          ratingWidget: RatingWidget(
            full: Icon(
              Icons.star,
              color: Colors.amber,
            ),
            half: Icon(
              Icons.star_half,
              color: Colors.amber,
            ),
            empty: Icon(
              Icons.star,
              color: Colors.grey,
            )
          ), onRatingUpdate: (double value) {  },

        ),
      ),
    );
  }
}
