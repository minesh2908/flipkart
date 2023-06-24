import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class Variations extends StatelessWidget {
  const Variations({
    super.key,
    required this.variants,
  });

  final List variants;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 120,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: variants.length,
            itemBuilder: (BuildContext, index) {
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 7),
                    child: GestureDetector(
                      child: Card(
                        shape: RoundedRectangleBorder(
                          side: variants[index]['selected']
                              ? BorderSide(color: Colors.blue)
                              : BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              height: 70,
                              width: 50,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                    variants[index]['images'],
                                  ),
                                ),
                              )),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Container(
                        width: 50,
                        height: 20,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: variants[index]['availabilty'] == "0"
                                ? Border.all(color: Colors.transparent)
                                : Border.all(color: Colors.red)),
                        child: Center(
                            child: Text(
                          variants[index]['availabilty'] == "0"
                              ? ''
                              : "${variants[index]['availabilty']} left",
                          style: TextStyle(color: Colors.red),
                        ))),
                  )
                ],
              );
            }),
      ),
    );
  }
}
