import 'package:flutter/material.dart';

import 'ProductDataMap.dart';
SingleChildScrollView ProductList1({
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
              ]
          ),

        )
      ],
    ),
  );
}