import 'package:flutter/material.dart';

class Bubble extends StatelessWidget {
  String text;
  String imageUrl;
  Bubble({required this.text, required this.imageUrl}) {}

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(imageUrl),
            ),
            color: Colors.grey.withOpacity(0.4),
            shape: BoxShape.circle,
            // borderRadius: BorderRadius.circular(50),
          ),
          height: 50,
          width: 50,
          margin: EdgeInsets.only(left: 10, top: 5, right: 10),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          text,
          style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
