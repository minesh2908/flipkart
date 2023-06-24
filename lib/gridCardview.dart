import 'package:flutter/material.dart';

class GridCardView extends StatefulWidget {
  const GridCardView({super.key});

  @override
  State<GridCardView> createState() => _GridCardViewState();
}

class _GridCardViewState extends State<GridCardView> {
  final List<Map<String, dynamic>> gridCard = [
    {
      "image":
          "https://www.pngall.com/wp-content/uploads/2016/04/Watch-Free-Download-PNG.png",
      "title": "Silver Wrist Watch",
      "Offer": "Min 90% off"
    },
    {
      "image":
          "https://www.freepnglogos.com/uploads/watch-png/watch-apple-september-announcements-and-filemaker-cimbura-11.png",
      "title": "Wrist Watch",
      "Offer": "Min 40% off"
    },
    {
      "image": "https://pngimg.com/uploads/flip_flops/flip_flops_PNG31.png",
      "title": "Slipers & FLip Flops",
      "Offer": "Min 70% off"
    },
    {
      "image":
          "https://atlas-content-cdn.pixelsquid.com/assets_v2/246/2468938011518178390/previews/G03-200x200.jpg",
      "title": "True Wireless",
      "Offer": "Min 50% off"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 10, right: 10),
      child: GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: gridCard.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            mainAxisExtent: 200,
          ),
          itemBuilder: (context, index) {
            return Card(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 5, right: 5),
                  child: Image.network(
                    gridCard.elementAt(index)['image'],
                    height: 120,
                    width: double.infinity,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 5),
                  child: Text(
                    gridCard.elementAt(index)['title'],
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 5),
                  child: Text(
                    gridCard.elementAt(index)['Offer'],
                    style: const TextStyle(
                        color: Colors.green, fontWeight: FontWeight.w700),
                  ),
                )
              ],
            ));
          }),
    );
  }
}
