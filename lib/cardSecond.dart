import 'package:flutter/material.dart';

class CardSecond extends StatelessWidget {
  String image;
  String firstText;
  String SecondText;
  // String simpleText;
  CardSecond({required this.image, required this.firstText, required this.SecondText}){}
  @override
  Widget build(BuildContext context) {

    
    return Padding(
      padding: const EdgeInsets.only(left: 4, right: 0),
      child: Card(
   
        elevation: 0.0,
        shape: RoundedRectangleBorder(
            side: BorderSide(
                width: 1.0, color: Colors.grey.shade400),
            borderRadius: BorderRadius.circular(6)),
        child: SizedBox(
          height: 130,
          width: 100,
          child: Column(children: [
             Image.network(image, height: 80,
             width: 100, fit: BoxFit.fill,),
             SizedBox(height: 10,),
             Text(firstText,style: TextStyle(fontSize: 11, fontWeight: FontWeight.w400),),
             Text(SecondText,style: TextStyle(fontSize: 11, fontWeight: FontWeight.w900),)
   
          ],),
               ),
      ),
    );
  }
}