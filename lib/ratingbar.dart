import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
class ratingBar extends StatelessWidget {
  const ratingBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:8.0),
      child:
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
        RatingBar.builder(
          itemBuilder: (context, index) {
            return Icon(
              Icons.star,
              color:Colors.green,
            );
          },
          onRatingUpdate: (Rating) {
            print(Rating);
          },
          initialRating: 3,
          minRating: 1,
          itemSize: 20,
          direction: Axis.horizontal,
        ),
      ]),
    );
  }
}
