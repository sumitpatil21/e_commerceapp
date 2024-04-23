import 'package:flutter/material.dart';

Widget uperCatgiory(String pick,String underline) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 0),
    child: Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      height: 280,
      width: 350,
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.symmetric(horizontal: 170)),

              Text(underline,style: TextStyle(fontSize: 35,color: Colors.white,fontWeight: FontWeight.w700),),
            ],
          ),

        ],

      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(pick),
            fit: BoxFit.cover,
            opacity: 0.7
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.white,blurRadius: 7,

            )
          ],
          color: Colors.black
      ),
    ),
  );
}