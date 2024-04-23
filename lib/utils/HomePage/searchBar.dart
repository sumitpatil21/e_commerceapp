import 'package:flutter/material.dart';

Padding uperfoodlist() {
  return Padding(
    padding: EdgeInsets.all(20),
    child: Container(

      margin: EdgeInsets.symmetric(vertical: 30,horizontal: 1),
      height: 70,
      width: 400,
      decoration: BoxDecoration(
        color: Colors.white12,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Padding(padding: EdgeInsets.all(10)),
          Icon(
            Icons.search_rounded,
            color: Colors.white,
            size: 35,
          ),
          SizedBox(width: 15),
          Text(
            "Find Restaurants",
            style: TextStyle(
                fontWeight: FontWeight.w300,
                color: Colors.white,
                fontSize: 25,
                letterSpacing: 2),
          ),
          SizedBox(width: 60),
          Icon(
            Icons.filter_alt_rounded,
            color: Colors.white,
            size: 35,
          ),
        ],
      ),
    ),
  );
}

