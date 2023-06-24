import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class PoductDetailsAppBar extends StatelessWidget implements PreferredSizeWidget{
 

  @override
  Widget build(BuildContext context) {
    return  AppBar(
      automaticallyImplyLeading: false,
      elevation: 0.0,
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(
        color: Colors.black,
        size: 25,
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                 child: InkWell(
                  onTap: (){Navigator.pop(context);},
                child: Icon(Icons.arrow_back),)
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Icon(CupertinoIcons.search),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Icon(CupertinoIcons.mic),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Icon(CupertinoIcons.shopping_cart),
              )
            ],
          )
        ],
      )
    );
  }
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size(double.maxFinite, 50);
}



