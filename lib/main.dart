import 'package:carousel_slider/carousel_slider.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/signup_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SignUpScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});
  int _selectedIndex = 0;
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var controller = PageController(viewportFraction: 0.7);
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white.withOpacity(0.9),
        bottomNavigationBar: CurvedNavigationBar(
          buttonBackgroundColor: Colors.orange,
          backgroundColor: Colors.white30,
          items: <Widget>[
            Icon(Icons.shopping_cart, size: 30),
            Icon(Icons.home, size: 30),
            Icon(Icons.category, size: 30),
          ],
          onTap: ((value) => _onItemTapped(value)),
        ),
        body: IndexedStack(
          index: widget._selectedIndex,
          children: getLayout(),
        ),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      widget._selectedIndex = index;
    });
  }
}

List<Widget> getLayout() {
  return <Widget>[
    CartScreen(),
    homeScreen(),
    Container(),
  ];
}

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        actions: [],
        backgroundColor: Colors.grey.shade300,
        elevation: 0,
        title: Text(
          "My Cart",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(
                        width: 120,
                        height: 120,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image.asset(
                              "assets/images/burger_black3.jpg",
                              fit: BoxFit.fill,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 14, vertical: 8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Italian Hot",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w700),
                            ),
                            Text(
                              'Pizza',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey.shade700,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "\$13.99",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey.shade700,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        width: 1, color: Colors.grey.shade700),
                                  ),
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.grey.shade700,
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                const Text("2"),
                                const SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      width: 1,
                                      color: Colors.grey.shade700,
                                    ),
                                  ),
                                  child: Column(
                                    children: [
                                      Icon(
                                        Icons.minimize,
                                        color: Colors.grey.shade700,
                                      ),
                                      const SizedBox(
                                        height: 13,
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 110,
                                ),
                                Container(
                                  child: Column(
                                    children: [
                                      Icon(
                                        Icons.cancel_outlined,
                                        color: Colors.grey.shade600,
                                        size: 28,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(
                        width: 120,
                        height: 120,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image.asset(
                              "assets/images/burger_black2.jpg",
                              fit: BoxFit.fill,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 14,
                          vertical: 8,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Italian Hot",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w700),
                            ),
                            Text(
                              'Pizza',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey.shade700,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "\$13.99",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey.shade700,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        width: 1, color: Colors.grey.shade700),
                                  ),
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.grey.shade700,
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Text("2"),
                                const SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      width: 1,
                                      color: Colors.grey.shade700,
                                    ),
                                  ),
                                  child: Column(
                                    children: [
                                      Icon(
                                        Icons.minimize,
                                        color: Colors.grey.shade700,
                                      ),
                                      const SizedBox(
                                        height: 13,
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 110,
                                ),
                                Container(
                                  child: Column(
                                    children: [
                                      Icon(
                                        Icons.cancel_outlined,
                                        color: Colors.grey.shade600,
                                        size: 28,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(
                        width: 120,
                        height: 120,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image.asset(
                              "assets/images/burger_black4.jpg",
                              fit: BoxFit.fill,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 14,
                          vertical: 8,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Italian Hot",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w700),
                            ),
                            Text(
                              'Burger',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey.shade700,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "\$13.99",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey.shade700,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        width: 1, color: Colors.grey.shade700),
                                  ),
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.grey.shade700,
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text("2"),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      width: 1,
                                      color: Colors.grey.shade700,
                                    ),
                                  ),
                                  child: Column(
                                    children: [
                                      Icon(
                                        Icons.minimize,
                                        color: Colors.grey.shade700,
                                      ),
                                      SizedBox(
                                        height: 13,
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 110,
                                ),
                                Container(
                                  child: Column(
                                    children: [
                                      Icon(
                                        Icons.cancel_outlined,
                                        color: Colors.grey.shade600,
                                        size: 28,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Icon(
                      Icons.add,
                      size: 22,
                      color: Colors.orange,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Add more Items",
                      style: TextStyle(
                        color: Colors.orange,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 90,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Sub total",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '\$63.45',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Taxes & Fees",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '\$63.45',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Delivery fee",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '\$63.45',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "-----------------------------------------------------",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w200),
                        ),
                      ],
                    ),
                   const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const[
                         Text(
                          "Total",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w700),
                        ),
                        Text(
                          '\$78.45',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class homeScreen extends StatelessWidget {
  const homeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 40,
                    width: 300,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey.shade400,
                        width: 1,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                      //color: Colors.grey,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.search,
                                color: Colors.black,
                              ),
                              Text(
                                "Search",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            width: 1,
                            height: 25,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade400,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(Icons.location_history),
                              Text("New York,NYC")
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Icon(
                      Icons.settings_sharp,
                      color: Colors.white,
                    ),
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 33),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 75,
                    child: Column(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            shape: BoxShape.circle,
                          ),
                          child: SizedBox(
                            height: 80,
                            child: Stack(
                              children: [
                                Center(
                                  child: Image.asset(
                                    'assets/images/1.png',
                                    fit: BoxFit.fill,
                                    width: 60,
                                    height: 40,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Drinks',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 11),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  SizedBox(
                    height: 75,
                    child: Column(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            shape: BoxShape.circle,
                          ),
                          child: SizedBox(
                            height: 70,
                            child: Stack(
                              children: [
                                Center(
                                  child: Image.asset(
                                    'assets/images/0.png',
                                    fit: BoxFit.fill,
                                    width: 40,
                                    height: 30,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Fast food',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 11),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  SizedBox(
                    height: 75,
                    child: Column(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            shape: BoxShape.circle,
                          ),
                          child: SizedBox(
                            height: 70,
                            child: Stack(
                              children: [
                                Center(
                                  child: Image.asset(
                                    'assets/images/2.png',
                                    fit: BoxFit.fill,
                                    width: 40,
                                    height: 30,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Sea food',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 11),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  SizedBox(
                    height: 75,
                    child: Column(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            shape: BoxShape.circle,
                          ),
                          child: SizedBox(
                            height: 70,
                            child: Stack(
                              children: [
                                Center(
                                  child: Image.asset(
                                    'assets/images/3.png',
                                    fit: BoxFit.fill,
                                    width: 40,
                                    height: 30,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Sea food',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 11),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  SizedBox(
                    height: 75,
                    child: Column(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            shape: BoxShape.circle,
                          ),
                          child: SizedBox(
                            height: 70,
                            child: Stack(
                              children: [
                                Center(
                                  child: Image.asset(
                                    'assets/images/0.png',
                                    fit: BoxFit.fill,
                                    width: 40,
                                    height: 30,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Fast food',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 11),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 40, top: 30),
              child: Row(
                children: [
                  Text(
                    "Popular items",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CarouselSlider(
              options: CarouselOptions(
                height: 200,
                aspectRatio: 16 / 10,
                viewportFraction: 0.7,
                initialPage: 1,
                enableInfiniteScroll: false,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                enlargeFactor: 0.3,
                //onPageChanged: callbackFunction,
                scrollDirection: Axis.horizontal,
              ),
              items: [1, 2, 3, 4, 5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      //width: 400,
                      //width: MediaQuery.of(context).size.width,
                      //margin: EdgeInsets.symmetric(horizontal: 5.0),
                      child: Stack(
                        alignment: AlignmentDirectional.bottomStart,
                        // fit: StackFit.expand,
                        children: [
                          ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              child: Image.asset(
                                'assets/images/burger_black$i.jpg',
                                fit: BoxFit.fill,
                              )),
                          Positioned(
                            left: 10,
                            bottom: 30,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                              onPressed: () {},
                              child: Text(
                                'add to cart',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 40,
                            left: 250,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white54,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                              height: 30,
                              width: 30,
                              child: Icon(
                                Icons.comment_rounded,
                                size: 18,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 40,
                            left: 210,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white54,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                              height: 30,
                              width: 30,
                              child: Icon(
                                Icons.favorite,
                                size: 18,
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            Padding(
              padding: EdgeInsets.only(left: 40, top: 30, right: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Delicious items",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    'see all',
                    style: TextStyle(
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CarouselSlider(
              options: CarouselOptions(
                height: 300,
                aspectRatio: 16 / 10,
                viewportFraction: 0.7,
                initialPage: 1,
                enableInfiniteScroll: false,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                enlargeFactor: 0.3,
                //onPageChanged: callbackFunction,
                scrollDirection: Axis.horizontal,
              ),
              items: [1, 2].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      //width: 400,
                      //width: MediaQuery.of(context).size.width,
                      //margin: EdgeInsets.symmetric(horizontal: 5.0),
                      child: Stack(
                        alignment: AlignmentDirectional.bottomStart,
                        fit: StackFit.expand,
                        children: [
                          ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              child: Image.asset(
                                'assets/images/burger_black$i.jpg',
                                fit: BoxFit.fill,
                              )),
                          Positioned(
                            left: 10,
                            bottom: 30,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                              onPressed: () {},
                              child: Text(
                                'add to cart',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 40,
                            left: 250,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white54,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                              height: 30,
                              width: 30,
                              child: Icon(
                                Icons.comment_rounded,
                                size: 18,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 40,
                            left: 210,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white54,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                              height: 30,
                              width: 30,
                              child: Icon(
                                Icons.favorite,
                                size: 18,
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                );
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}
