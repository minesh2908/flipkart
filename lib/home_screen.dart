import 'package:flipkart/ProductHorizontalCard.dart';
import 'package:flipkart/bubble.dart';
import 'package:flipkart/gridCardview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'cardFirst.dart';
import 'cardSecond.dart';
import 'sliderImages.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final CarouselController carouselController = CarouselController();
  int _selectedIndex = 0;
  List<String> BubbleText = [
    'Supercoins',
    'NextGen Brands',
    'Credit',
    'LiveShop+',
    'EMI',
    'Students Club',
    'Plus',
  ];

  List<String> BubbleImageUrlList = [
    'https://www.pngitem.com/pimgs/m/154-1543073_coin-super-mario-coin-png-transparent-png.png',
    'https://png.pngtree.com/png-vector/20220108/ourmid/pngtree-brand-new-logo-vector-for-arrival-products-png-image_4264433.png',
    'https://freepngimg.com/thumb/credit_card/25871-5-credit-card-free-download.png',
    'https://static.vecteezy.com/system/resources/previews/016/017/082/original/live-live-transparent-live-icon-free-png.png',
    'https://cdn.iconscout.com/icon/free/png-256/free-emi-calculator-1817339-1538208.png',
    'https://media.istockphoto.com/id/1212812078/vector/student-avatar-flat-icon-flat-vector-illustration-symbol-design-element.jpg?s=612x612&w=0&k=20&c=SouFqEm9Lcnv6GPGoRqLmazCb-SnlrWWa7bGpzmNpus=',
    'https://w7.pngwing.com/pngs/528/654/png-transparent-plus-and-minus-signs-addition-mathematics-plus-rectangle-plus-cross-thumbnail.png'
  ];
  static const TextStyle optionStyle = TextStyle(
    fontSize: 25,
  );
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Product',
      style: optionStyle,
    ),
    Text(
      'Index 2: Notifications',
      style: optionStyle,
    ),
    Text(
      'Index 3: Accounts',
      style: optionStyle,
    ),
    Text(
      'Index 4: Cart',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Products',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications_outlined),
                label: 'Notifications'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_outlined), label: 'Account'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_outlined), label: 'Cart'),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Color(0xFF287FF0),
          selectedLabelStyle: TextStyle(color: Color(0xFF287FF0), fontSize: 10),
          unselectedItemColor: Colors.black54,
          unselectedLabelStyle: TextStyle(color: Colors.black54, fontSize: 10),
          showUnselectedLabels: true,
          iconSize: 25,
          type: BottomNavigationBarType.fixed,
          onTap: _onItemTapped),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF287FF0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          elevation: 0.0),
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 20, right: 20, top: 7, bottom: 7),
                        child: Row(
                          children: [
                            Image.network(
                              'https://www.freepnglogos.com/uploads/flipkart-logo-png/flipkart-logo-transparent-png-download-0.png',
                              width: 25,
                              height: 25,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 3),
                              child: Text(
                                'Flipkart',
                                style: TextStyle(
                                    fontFamily: 'PTSans',
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey.withOpacity(0.1),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          elevation: 0.0),
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 20, right: 20, top: 5, bottom: 5),
                        child: Row(
                          children: [
                            Image.asset(
                              'images/logo.png',
                              width: 30,
                              height: 30,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text(
                                'Grocery',
                                style: TextStyle(
                                    fontFamily: 'PTSans',
                                    fontWeight: FontWeight.w800,
                                    color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.only(top: 5, left: 20, right: 20),
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          children: [
                            Text(
                              'Brand Mall',
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black54),
                            ),
                            FlutterSwitch(
                              value: status2,
                              height: 20,
                              width: 50,
                              toggleSize: 12,
                              valueFontSize: 12,
                              activeTextColor: Colors.white,
                              inactiveTextColor: Colors.black,
                              activeColor: Colors.black,
                              inactiveColor: Colors.grey.withOpacity(0.4),
                              showOnOff: true,
                              activeText: "ON",
                              inactiveText: "OFF",
                              activeTextFontWeight: FontWeight.w500,
                              inactiveTextFontWeight: FontWeight.w500,
                              onToggle: (val) {
                                setState(() {
                                  status2 = val;
                                });
                              },
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 12,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(7)),
                        child: Stack(
                          alignment: Alignment.centerRight,
                          children: [
                            TextField(
                              style: TextStyle(fontSize: 20),
                              decoration: InputDecoration(
                                fillColor: Colors.black,
                                focusColor: Colors.red,
                                hintText: 'Seach for poducts',
                                hintStyle: TextStyle(fontSize: 15),
                                contentPadding: EdgeInsets.all(4),
                                prefixIcon: Icon(Icons.search),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(7),
                                  borderSide: BorderSide(
                                      color: Colors.grey.withOpacity(0.4),
                                      width: 1),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 20, right: 7),
                                  child: Icon(
                                    Icons.mic_none_sharp,
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 9),
                                  child: Icon(
                                    Icons.camera_alt_outlined,
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Stack(
                  children: [
                    InkWell(
                      onTap: () {
                        print(ImagecurrentIndex);
                      },
                      child: CarouselSlider(
                        items: imageList
                            .map(
                              (item) => Image.asset(
                                item['image_path'],
                                fit: BoxFit.cover,
                                width: double.infinity,
                              ),
                            )
                            .toList(),
                        carouselController: carouselController,
                        options: CarouselOptions(
                            scrollPhysics: const BouncingScrollPhysics(),
                            autoPlay: true,
                            aspectRatio: 2,
                            viewportFraction: 1,
                            onPageChanged: (index, reason) {
                              setState(() {
                                ImagecurrentIndex = index;
                              });
                            }),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      left: 0,
                      right: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: imageList.asMap().entries.map((entry) {
                          return GestureDetector(
                            onTap: () =>
                                carouselController.animateToPage(entry.key),
                            child: Container(
                              width: ImagecurrentIndex == entry.key ? 15 : 7,
                              height: 7.0,
                              margin: const EdgeInsets.symmetric(
                                horizontal: 3.0,
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: ImagecurrentIndex == entry.key
                                      ? Colors.white
                                      : Colors.grey),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 90,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: BubbleText.length,
                    itemBuilder: (context, index) {
                      return Bubble(
                        text: BubbleText[index],
                        imageUrl: BubbleImageUrlList[index],
                      );
                    }),
              ),
              Divider(
                color: Colors.grey.shade200,
              ),
              Container(
                height: 130,
                width: double.infinity,
                color: Color(0xFFffb6e1),
                //backgroundColor: Colors.pink,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CardFirst(
                      image:
                          'https://gumlet.assettype.com/bloombergquint%2F2023-03%2Fbef871a7-0dee-486f-b206-9ca8b7d9a0ca%2FSoaps_Range.jpg?auto=format%2Ccompress&w=732',
                      firstText: 'Extra ₹75 Off*',
                      SecondText: 'Sale is Live',
                    ),
                    CardFirst(
                      image: 'https://cdn.moglix.com/p/NKrBgT0EmIzgw.jpg',
                      firstText: 'realme C33 2023',
                      SecondText: 'From ₹8,999',
                    ),
                    CardFirst(
                      image:
                          'https://dyanora.in/wp-content/uploads/2021/02/TVSG4YVQXWMUGZCW_01-1.jpg',
                      firstText: 'Google TV',
                      SecondText: 'From ₹10,499',
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.grey.shade200,
              ),
              Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(left: 14),
                    child: Text(
                      'Recently Viewed Store',
                      style:
                          TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 4.0, top: 10),
                    child: Container(
                      height: 150,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          CardSecond(
                              image:
                                  'https://www.freepnglogos.com/uploads/airpods-png/imagic-baroda-airpods-5.png',
                              firstText: 'True Wireless',
                              SecondText: ''),
                          CardSecond(
                              image:
                                  'https://www.pngmart.com/files/22/Sling-Bag-Transparent-PNG.png',
                              firstText: 'Sling Bags',
                              SecondText: ''),
                          CardSecond(
                              image:
                                  'https://purepng.com/public/uploads/large/purepng.com-slippersfashion-sandal-object-slippers-shoe-beachclothingslippers-631522329699jzdrs.png',
                              firstText: 'Sliper & Flip  Flops',
                              SecondText: ''),
                          CardSecond(
                              image:
                                  'https://www.pngall.com/wp-content/uploads/2/Rolex-Watch-PNG-Free-Image.png',
                              firstText: 'Watches',
                              SecondText: '')
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Divider(),
              Container(
                width: double.infinity,
                height: 500,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://static.vecteezy.com/system/resources/previews/003/641/130/original/colorful-pink-blurred-backgrounds-valentine-s-day-pink-background-abstract-gradient-light-pink-illustration-free-vector.jpg'),
                      fit: BoxFit.cover),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Discounts for You',
                            style: TextStyle(
                                fontSize: 21, fontWeight: FontWeight.w500),
                          ),
                          Row(
                            children: [
                              Image.network(
                                'http://pngimagesfree.com/Sale/Big-sale_yellow-png_pngimagesfree.com.png',
                                width: 70,
                                height: 70,
                              ),
                              Icon(
                                Icons.arrow_circle_right,
                                color: Color(0xFF287FF0),
                                size: 30,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    GridCardView(),
                  ],
                ),
              ),
              Divider(
                thickness: 1.0,
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  'Items Back in Stock',
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
                ),
                alignment: Alignment.topLeft,
              ),
              Divider(),
              Column(
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, "productDetailPage");
                    },
                    child: ProductHorizontalCard(
                      image:
                          'https://www.pngmart.com/files/15/Apple-iPhone-11-PNG-Clipart.png',
                      price: '₹ 79,999',
                      productName: 'Iphone 11 Pro',
                      productDetail: '2GB RAM',
                      originalPrice: '',
                    ),
                  ),
                    Divider(),
                   ProductHorizontalCard(
                    image:
                        'https://freepngimg.com/thumb/categories/627.png',
                    price: '₹ 1,999',
                    productName: 'Best Running Shoes in Market',
                    productDetail: 'Best Grip',
                    originalPrice: '',
                  ),
                   Divider(),
                   ProductHorizontalCard(
                    image:
                        'https://www.freepnglogos.com/uploads/laptop-png/laptop-transparent-png-pictures-icons-and-png-40.png',
                    price: '₹1,09,999',
                    originalPrice: '₹1,49,999   ',
                    productName: 'Gaming Laptop With High tech Features',
                    productDetail: '2GB RAM',
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
