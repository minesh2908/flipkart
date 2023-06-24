import 'package:flipkart/ProductNavBar.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../ProductCarousel.dart';
import '../ProductDetailBottomNavBar.dart';
import '../ratingbar.dart';
import '../variations.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductDetailPage extends StatefulWidget {
  const ProductDetailPage({super.key});

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  final CarouselController carouselController = CarouselController();
  List SliderImages = [
    {
      "id": 1,
      "images":
          'https://rukminim1.flixcart.com/image/416/416/k2jbyq80pkrrdj/mobile-refurbished/x/j/s/iphone-11-128-d-mwm02hn-a-apple-0-original-imafkg242ugz8hwc.jpeg?q=70'
    },
    {
      "id": 2,
      "images":
          'https://rukminim1.flixcart.com/image/416/416/kgiaykw0/mobile/y/n/y/apple-iphone-11-mhda3hn-a-original-imafwqepdb3fxtug.jpeg?q=70'
    },
    {
      "id": 3,
      "images":
          'https://rukminim1.flixcart.com/image/416/416/kgiaykw0/mobile/y/n/y/apple-iphone-11-mhda3hn-a-original-imafwqepmmrxjzzd.jpeg?q=70'
    },
    {
      "id": 4,
      "images":
          'https://rukminim1.flixcart.com/image/416/416/k2jbyq80pkrrdj/mobile-refurbished/v/w/j/iphone-11-128-a-mwm02hn-a-apple-0-original-imafkg24bhgxu9ux.jpeg?q=70'
    },
    {
      "id": 5,
      "images":
          'https://rukminim1.flixcart.com/image/416/416/k2jbyq80pkrrdj/mobile-refurbished/d/u/h/iphone-11-128-u-mwm02hn-a-apple-0-original-imafkg24r2ragyqf.jpeg?q=70'
    },
  ];

  List variants = [
    {
      "id": 1,
      "images":
          "https://rukminim1.flixcart.com/image/416/416/k2jbyq80pkrrdj/mobile-refurbished/x/j/s/iphone-11-128-d-mwm02hn-a-apple-0-original-imafkg242ugz8hwc.jpeg?q=70",
      "selected": true,
      "availabilty": "2"
    },
    {
      "id": 2,
      "images":
          "https://rukminim1.flixcart.com/image/416/416/k2jbyq80pkrrdj/mobile-refurbished/u/z/t/iphone-11-256-c-mwmd2hn-a-apple-0-original-imafkg24wszdhzy3.jpeg?q=70",
      "selected": false,
      "availabilty": "0"
    },
    {
      "id": 3,
      "images":
          "https://rukminim1.flixcart.com/image/416/416/k2jbyq80pkrrdj/mobile-refurbished/y/k/z/iphone-11-64-a-mwlx2hn-a-apple-0-original-imafkg24ymsjav9h.jpeg?q=70",
      "selected": false,
      "availabilty": "5"
    },
    {
      "id": 4,
      "images":
          "https://rukminim1.flixcart.com/image/416/416/k2jbyq80pkrrdj/mobile-refurbished/q/z/g/iphone-11-128-a-mwm32hn-a-apple-0-original-imafkg25hjmuy98e.jpeg?q=70",
      "selected": false,
      "availabilty": "0"
    },
    {
      "id": 5,
      "images":
          "https://rukminim1.flixcart.com/image/416/416/k2jbyq80pkrrdj/mobile-refurbished/k/y/d/iphone-11-256-u-mwm82hn-a-apple-0-original-imafkg25mhaztxns.jpeg?q=70",
      "selected": false,
      "availabilty": "4"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PoductDetailsAppBar(),
      bottomNavigationBar: ProductDetailBottomNavBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ProductCarousel(
                  SliderImages: SliderImages,
                  carouselController: carouselController),
              const Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text('Color:'),
                        Text(
                          'Red/Black/Grey/Jet Black',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                    Text(
                      'Available Color: 2',
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              ),
              Variations(variants: variants),
              const Divider(
                thickness: 2,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Text('Apple ',
                      textAlign: TextAlign.start,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  Text('iphone 11 (Black, 128 GB)')
                ]),
              ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [const ratingBar(), 
                    SizedBox(width: 20,),
                    Text('1,95,678 rating', style: TextStyle(color: Colors.blue),)],)
            ],
          ),
        ),
      ),
    );
  }
}
