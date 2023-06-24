import 'package:flutter/material.dart';

class CardFirst extends StatelessWidget {
  String image;
  String firstText;
  String SecondText;
  // String simpleText;
  CardFirst(
      {required this.image,
      required this.firstText,
      required this.SecondText}) {}
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 4, right: 4),
      child: Card(
        elevation: 2.0,
        shape: RoundedRectangleBorder(
            side: BorderSide(width: 1.0, color: Colors.grey.shade400),
            borderRadius: BorderRadius.circular(6)),
            
        child: SizedBox(
          height: 110,
          width: 100,
          child: Column(
            children: [
              Image.network(
                image,
                height: 70,
                width: 90,
                fit: BoxFit.fill,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                firstText,
                style: TextStyle(fontSize: 11, fontWeight: FontWeight.w400),
              ),
              Text(
                SecondText,
                style: TextStyle(fontSize: 11, fontWeight: FontWeight.w900),
              )
            ],
          ),
        ),
      ),
    );
  }
}
