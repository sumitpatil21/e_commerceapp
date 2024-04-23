import 'package:flutter/material.dart';

import 'ProductDataMap.dart';

SingleChildScrollView ProductList2({
  required var img1,
  required var tex2,
  required var star3,
  required var price4,
}) {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Column(
      children: [
        Padding(
          padding: EdgeInsets.all(5),
        ),
        Container(
          margin: EdgeInsets.all(6),
          height: 280,
          width: 200,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(img1),
                fit: BoxFit.cover,
              ),
              boxShadow: [
                BoxShadow(color: Colors.white, blurRadius: 7),
              ]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
            Container(
            height: 80,
            width: 200,
            child: Column(
              children: [
                Text('$tex2',style: TextStyle(fontSize: 22,color: Colors.white,fontWeight: FontWeight.w700,letterSpacing: 1,shadows: [Shadow(color: Colors.indigoAccent,blurRadius: 25)]),),
                Text('$price4',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w700,letterSpacing: 1,shadows: [Shadow(color: Colors.indigoAccent,blurRadius: 25,)]),),
                Text('$star3',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 13),),
              ],
            ),
          )
            ],
          ),
        ),
      ],
    ),
  );
}
