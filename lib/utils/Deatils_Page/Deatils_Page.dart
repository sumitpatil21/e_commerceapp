import 'package:e_commerceapp/utils/AddToCart/AddCart.dart';
import 'package:e_commerceapp/utils/HomePage/Home_Page.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../HomePage/ProductDataMap.dart';
import '../HomePage/ProdutcList2.dart';

class DeatilPage extends StatefulWidget {
  const DeatilPage({super.key});

  @override
  State<DeatilPage> createState() => _DeatilPageState();
}

class _DeatilPageState extends State<DeatilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "Deatils Page",
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.w500, color: Colors.white),
          ),
          leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Colors.white,
                size: 25,
              )),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Addtocart(),
                  ));
                },
                child: Icon(
                  Icons.shopping_cart,
                  size: 33,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(25),
                height: 265,
                width: 450,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        datasend[indexSelecter1]["images"],
                      ),
                      fit: BoxFit.fitWidth,
                    ),
                    color: Colors.black,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white,
                        blurRadius: 9,
                      )
                    ]),
                alignment: Alignment.bottomLeft,
              ),
              Text(
                datasend[indexSelecter1]["text"],
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
              Text(datasend[indexSelecter1]["star"],
                style: TextStyle(color: Colors.white),),
              Padding(padding: EdgeInsets.all(1)),
              Row(children: [
                Padding(padding: EdgeInsets.all(15)),
                Text(
                  "Instructions...",
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 25,
                      fontWeight: FontWeight.w700),
                )
              ]),
              Padding(padding: EdgeInsets.all(5)),
              Container(
                height: 90,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.green,
                    Colors.black26,
                  ]),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "marketer drink scene is hard crac great copywriting to eyes feasting on your products the right words will ensure your products are at the top of mind the next time cravings hit. ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.all(10)),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.all(15)),
                  Text(
                    "Nutritional Information",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 25,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.all(1)),
              Container(
                margin: EdgeInsets.all(15),
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white38,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(padding: EdgeInsets.all(20)),
                          ...List.generate(
                            nutrition.length,
                                (index) =>
                                Text(
                                  nutrition[index],
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                    color: Colors.white, fontSize: 15,
                                  ),
                                ),
                          ),
                        ]),
                    SizedBox(
                      width: 100,
                    ),
                    Column(

                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(padding: EdgeInsets.all(20)),
                          ...List.generate(
                            nutrition.length,
                                (index) =>
                                Text(
                                  gram[index],
                                  textAlign: TextAlign.right,
                                  style: TextStyle(color: Colors.white,
                                      fontSize: 15),
                                ),
                          ),
                        ]),
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.all(15)),
              InkWell(
                onTap: () {
                  setState(() {
                    addcartdata.add(datasend[indexSelecter1]);
                  });
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.white30,
                    borderRadius: BorderRadius.circular(40),

                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "🛒",
                        style: TextStyle(
                          fontSize: 25,
                          shadows: [Shadow(color: Colors.black, blurRadius: 8)],
                        ),
                      ),
                      Text(" Add To Cart",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                              shadows: [
                                Shadow(color: Colors.white, blurRadius: 35)
                              ])),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

List nutrition = [
  "Serving Size",
  "Calories",
  "Protein",
  "Cerbohydrates",
  "sugar",
  "Fiber",
  "Fat",
  "Saturated Fat",
  "Chokessterol",
  "Sodium",
  "Potassium"
];
List gram = [
  "250g",
  "455 Kcal",
  "10g",
  "20g",
  "5g",
  "2g",
  "3g",
  "55g",
  "250mg",
  "150mg",
  "100mg"
];
List addcartdata = [];
int x = 0;