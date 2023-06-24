import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductCarousel extends StatefulWidget {
  ProductCarousel({
    super.key,
    required this.SliderImages,
    required this.carouselController,
  });

  final List SliderImages;
  final CarouselController carouselController;

  @override
  State<ProductCarousel> createState() => _ProductCarouselState();
}

class _ProductCarouselState extends State<ProductCarousel> {
  int ImagecurrentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            CarouselSlider(
              items: widget.SliderImages.map((e) => Image.network(e['images'],
                  width: double.infinity, fit: BoxFit.fitHeight)).toList(),
              carouselController: widget.carouselController,
              options: CarouselOptions(
                scrollPhysics: const BouncingScrollPhysics(),
                viewportFraction: 1,
                height: 420,
                onPageChanged: (index, reason) {
                  setState(() {
                    ImagecurrentIndex = index;
                  });
                },
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Positioned(
              top: 10,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: widget.SliderImages.asMap().entries.map((entry) {
                  return GestureDetector(
                    onTap: () =>
                        widget.carouselController.animateToPage(entry.key),
                    child: Container(
                      width: ImagecurrentIndex == entry.key ? 15 : 7,
                      height: 8.0,
                      margin: const EdgeInsets.symmetric(
                        horizontal: 3.0,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: ImagecurrentIndex == entry.key
                              ? Colors.grey.shade800
                              : Colors.black12),
                    ),
                  );
                }).toList(),
              ),
            ),
            Divider(
              color: Colors.grey.shade200,
            ),
          ],
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 18.0),
                    child: InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, 'productDetailPage');
                      },
                      
                      child: Icon(Icons.favorite_outline, color: Colors.black54, size: 30,)),
                  ),
                  Icon(CupertinoIcons.arrowshape_turn_up_right, color: Colors.black54, size: 30,)
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
