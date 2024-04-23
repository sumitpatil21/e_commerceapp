import 'dart:ffi';


import 'package:e_commerceapp/utils/Deatils_Page/Deatils_Page.dart';
import 'package:e_commerceapp/utils/HomePage/Home_Page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../BillPayment.dart';
import '../HomePage/ProductDataMap.dart';

class Addtocart extends StatefulWidget {
  const Addtocart({super.key});

  @override
  State<Addtocart> createState() => _AddtocartState();
}

class _AddtocartState extends State<Addtocart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "Add To Cart",
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
          centerTitle: true,
          leading: InkWell(
            onTap: () {
              setState(() {
                Navigator.of(context).pop();
              });
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
                size: 25,
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: Container(
                child: SingleChildScrollView(
                  child: Column(children: [
                    ...List.generate(
                      addcartdata.length,
                      (index) => Container(
                        margin: EdgeInsets.all(25),
                        height: 250,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              addcartdata[index]["images"],
                            ),
                            fit: BoxFit.cover,
                            opacity: 0.7,
                          ),
                          color: Colors.black,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white,
                              blurRadius: 9,
                            )
                          ],
                        ),
                        alignment: Alignment.bottomRight,
                        child: Row(
                          children: [
                            Container(
                              height: 70,
                              width: 398,
                              color: Colors.black38,
                              alignment: Alignment.center,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      addcartdata[index]['text'],
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 55,
                                    width: 55,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(10),
                                            bottomLeft: Radius.circular(10))),
                                    child: InkWell(
                                        onTap: () {
                                          setState(() {
                                            addcartdata.removeAt(index);
                                          });
                                        },
                                        child: Icon(
                                          Icons.delete,
                                          color: Colors.red,
                                          size: 30,
                                        )),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
            ),
            Container(
              height: 90,
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.green.shade900,
                    Colors.green,
                  ]),
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(10))),
              alignment: Alignment.center,
              child: InkWell(
                onTap: () {
                  for(int i=0; i<addcartdata.length; i++)
                  {
                    total=(total+addcartdata[i]['price']).toInt();
                  }

                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => BillPayment()));
                },
                child: Text(
                  "Cheackout",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w500),
                ),
              ),
            )
          ],
        ));
  }
}

