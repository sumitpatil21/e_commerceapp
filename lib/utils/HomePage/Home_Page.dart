import 'package:e_commerceapp/utils/Deatils_Page/Deatils_Page.dart';
import 'package:e_commerceapp/utils/HomePage/ProductList3.dart';
import 'package:e_commerceapp/utils/HomePage/searchBar.dart';
import 'package:e_commerceapp/utils/HomePage/uperBoxDetails%5B1%5D.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import 'ProductDataMap.dart';
import 'ProductList1.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                uperfoodlist(),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  5,
                  (index) => uperCatgiory(imageuo[index], underList[index]),
                ),
              ),
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                textmenubar.length,
                (index) => InkWell(child: MenuBarText(textmenubar[index])),
              ),
            ),
            SizedBox(
              height: 25,
              width: 20,
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.all(5)),
                Column(
                  children: List.generate(
                      ProductsDataList.length,
                      (index) => InkWell(
                          onTap: () {
                            setState(() {
                              indexSelecter1 = index;
                              datasend=ProductsDataList;

                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => DeatilPage(),
                              ));
                            });
                          },
                          child: ProductList1(
                              img: ProductsDataList[index]["images"],
                              price: ProductsDataList[index]["price"],
                              tex: ProductsDataList[index]["text"],
                              star: ProductsDataList[index]["star"]))),
                ),
                SizedBox(
                  height: 100,
                ),
                Padding(padding: EdgeInsets.symmetric(horizontal: 12)),
                Column(
                  children: List.generate(
                      ProductsDataList.length,
                      (index) => InkWell(
                          onTap: () {
                            setState(() {
                              indexSelecter1 = index;
                              datasend=ProductsDataList1;
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => DeatilPage(),
                              ));
                            });
                          },
                          child: ProductList2(
                              img1: ProductsDataList1[index]["images"],
                              price4: ProductsDataList1[index]["price"],
                              tex2: ProductsDataList1[index]["text"],
                              star3: ProductsDataList1[index]["star"]))),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Column ProductData() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: 125,
          width: 250,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.green.shade500,
                Colors.black,
              ],
            ),
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(70),
              bottom: Radius.circular(10),
            ),
            boxShadow: [
              BoxShadow(
                  blurRadius: 25,
                  color: Colors.green,
                  blurStyle: BlurStyle.solid),
            ],
          ),
          alignment: Alignment.topCenter,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                children: [
                  Padding(padding: EdgeInsets.all(14)),
                  Text(
                    ProductsDataList[0]["text"],
                    style: TextStyle(
                        color: Colors.greenAccent,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        shadows: [Shadow(color: Colors.green, blurRadius: 15)]),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.start,
              ),
              Text(
                ProductsDataList[0]['price'],
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                ProductsDataList[0]['star'],
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

Widget? imagesDataw;

Text MenuBarText(String textMenu) {
  return Text(
    textMenu,
    style: TextStyle(
      color: Colors.white,
      fontSize: 25,
      fontWeight: FontWeight.w500,
      letterSpacing: 2,
      backgroundColor: backcolor,
    ),
  );
}

List imageuo = [
  'Assest/Images/delicious-indian-food-tray.jpg',
  'Assest/Images/delicious-indian-food-tray-flat-lay.jpg',
  'Assest/Images/high-angle-traditional-asian-dish-with-chopsticks.jpg',
  'Assest/Images/large-mixed-pizza-with-meat.jpg',
  'Assest/Images/local-food-meal-composition.jpg',
];
List underList = [
  "Desi Food",
  "Italian",
  "Chinese",
  "Maxicon",
  "Fast Food",
];
List textmenubar = [
  "All",
  "Menu",
  'Enents ',
  'About Us ',
];
Color backcolor = Colors.white12;
var indexSelecter = 10;
var indexSelecter1=20;
List datasend=['sumit'];
