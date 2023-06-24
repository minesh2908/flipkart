import 'package:flutter/material.dart';

class ProductDetailBottomNavBar extends StatefulWidget {
  int _selectedIndex = 1;
  @override
  State<ProductDetailBottomNavBar> createState() =>
      _ProductDetailBottomNavBarState();
}

class _ProductDetailBottomNavBarState extends State<ProductDetailBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    // return BottomNavigationBar(
    //   selectedIconTheme: IconThemeData(opacity: 0.0, size: 0),
    //   unselectedIconTheme: IconThemeData(opacity: 0.0, size: 0),
    //   selectedFontSize: 18,
    //   selectedItemColor: Colors.red,
    //   selectedLabelStyle: TextStyle(fontWeight: FontWeight.w500),
    //   unselectedFontSize: 18,
    //   unselectedItemColor: Colors.black,
    //   unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w500),
    //   items: [
    //     BottomNavigationBarItem(
    //       icon: Icon(Icons.home),
    //       label: "Add to Card",
    //     ),
    //     BottomNavigationBarItem(
    //         icon: Icon(Icons.home),
    //         label: "Buy Now",
    //         backgroundColor: Colors.yellow),
    //   ],
    // );
    return Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: Container(
            height: 50,
            child: Center(
              child: Text(
                'Add to Cart',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        Expanded(
          child: InkWell(
            onTap: () {
              showDialog(
                
                  context: context,
                  barrierColor: Colors.amber,
                  useSafeArea: true,
                  builder: (context) => Container(
                    
                        
                        child: Center(child: Text('Button Pressed')),
                      ));
            },
            child: Container(
                height: 50,
                child: Center(
                  child: Text(
                    'Buy Now',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.yellow,
                )),
          ),
        )
      ],
    ));
  }
}
