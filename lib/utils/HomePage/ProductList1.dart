import 'package:flutter/material.dart';

import 'ProductDataMap.dart';

SingleChildScrollView ProductList1({
  required var img,
  required var tex,
  required var star,
  required var price,
}) {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Column(children: [
      Padding(
        padding: EdgeInsets.all(5),
      ),
      Container(
        margin: EdgeInsets.symmetric(vertical: 5,horizontal: 0),
        height: 280,
        width: 200,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(img),
              fit: BoxFit.cover,
            ),
            boxShadow: [
              BoxShadow(color: Colors.white, blurRadius: 7),
            ]
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 80,
              width: 200,
              child: Column(
                children: [
                  Text('$tex',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w700,letterSpacing: 1,shadows: [Shadow(color: Colors.indigoAccent,blurRadius: 25)]),),
                  Text('$price',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w700,letterSpacing: 1,shadows: [Shadow(color: Colors.indigoAccent,blurRadius: 25,)]),),
                  Text('$star',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 13),),
                ],
              ),
            )
          ],
        ),
      ),
    ]),
  );
}
