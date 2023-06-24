import 'package:flutter/material.dart';

class ProductHorizontalCard extends StatelessWidget {
  String image;
  String productName;
  String productDetail;
  String price;
  String originalPrice;

  ProductHorizontalCard(
      {required this.image,
      required this.productName,
      required this.productDetail,
      required this.price,
      required this.originalPrice}) {}

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.network(
          image,
          height: 100,
          width: 80,
          fit: BoxFit.contain,
        ),
        Container(
          padding: EdgeInsets.only(left: 10, top: 7),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(productName),
              SizedBox(
                height: 3,
              ),
              Text(
                productDetail,
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(
                height: 3,
              ),
              Row(
                
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    originalPrice,
                    style: TextStyle(decoration: TextDecoration.lineThrough),
                  ),
                  Text(
                    price,
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
